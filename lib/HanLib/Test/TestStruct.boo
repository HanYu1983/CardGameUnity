namespace HanYu.TestStruct

import UnityEngine
import System.Linq
import HanLib

interface IA:
	def go()

struct A (IA):
	name as string
	def go():
		Debug.Log("go")
		
	override def ToString() as string:
		return "A{name: $name}"

struct B(IA):
	id as int
	def go():
		Debug.Log("gob")

class TestStruct (TestBase):
	def Start():
		a as A
		a2 as A
		a3 as A
		a4 as IA = A()
		
		ao as object = a4
		ao = A(name:'aoao')
		
		Should( ao != a4, "0")
		Should( ao == A(name:'aoao'), "0-1")
		
		ao = B(id:30)
		
		def exec2(v as A):
			v.name = 'exec2'
			
		exec2(a)
		
		Should( a == a2, "1")
		Should( a == a3, "2")
		Should( a2 == a2, "3")
		
		a.name = 'test'
		Should( a != a2, "4")
		
		a2.name = 'test'
		Should( a == a2, "5")
		
		a3 = A(name:'test')
		Should( a == a3, "6")
		
		a4.go()
		
		a5 = a3	
		a5.name = 'a5'
		
		Should( (a3.name, a5.name) == ('test', 'a5'), "-1")
		
		list0 = [a, a2, a3, 0]
		list0_2 = list0
		list0_2[0] = A(name:'xxx')
		Should( list0 == list0_2, "0")
		
		Should( list0.Find({v | v == 1}) == null, "-2")
		
		ary0 = (a, a2, a3, 0)
		ary1 = ary0
		ary1[1] = A(name:'ary1x')
		Should( ary0 == ary1, "0-2")
		
		list = [a, a2, a3]
		list2 = list.FindAll def (v):
			return v == a2
		
		Should( list2 == list, "7")
		
		list[1] = A(name:'test2')
		Should( list == [a, A(name:'test2'), a3], "8")
		
		list3 = list.RemoveAll def (v as A):
			return v.name == 'test2'
			
		Should( list3 == [a, a3], "9")
		Should( list3 == list, "10") // removeAll alter original list
		
		typeList = List[of A](list)
		typeList[0].name = 'wow'	// no effect
		Should( typeList[0] == list[0], "11")
		
		// linq return enumerator
		Should( List(list.Where({v as A | v.name == 'test'})) == list, "12")
		
		list.Where def (a as A):
			pass
		
		def exec(ori as int, v as object):
			return ori + 1
			
		Should( list.Aggregate(0, exec) == 2, "13")
		