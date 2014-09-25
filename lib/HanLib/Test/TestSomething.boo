namespace HanYu.Test

import UnityEngine
import HanLib


class A:
	static def op_UnaryNegation(x as A):
		return 100
		
	override def Equals(other) as bool:
		a = other as A
		if a is not null:
			return true
		else:
			return false
			
struct B:
	pass

class TestSomething (TestBase):
	def Start():
		
		a = A()
		a2 = A()
		a3 = a
		
		Should( -a == 100, "0")
		
		Should( a is not a2, "1")
		Should( a == a2, "2")
		
		Should( a is a3, "3")
		Should( a == a3, "4")
		
		list = [a, a2, a3]
		Should( list == [a, a, a], "5")
		Should( list[:] == [a, a, a], "6")
		Should( list[:2] == [a, a], "7")
		
		gen = i for i in range(1,5,2)
		Should( List(gen) == [1,3], "8")
		
		x, y = 100, 200
		Should( [x, y] == [100, 200], "9")
		
		Should( List(zip([1,2,3], ['a','b','c'])) == [(1,'a'),(2,'b'),(3,'c')], "10")
		
		Debug.Log( 50s ) 	// 50 seconds
		Debug.Log( 1d ) 	// 1 day
		Debug.Log( 2s )  	// 2 minutes
		Debug.Log( 42ms )  	// 42 miliseconds
		Debug.Log( "Tomorrow this time will be: $(date.Now + 1d)" )
		
		Should( List(enumerate(['a','b','c'])) == [(0,'a'),(1,'b'),(2,'c')], "11")
		
		//example using a multiline anonymous closure
		newlist = map([1,2,3,4,5,6]) def (x as int):
			return x*x*x
			
		Should( List(newlist) == [1, 8, 27, 64, 125, 216], "12")
		
		foo = matrix(int, 2, 2)
		foo[0, 0] = 10
		Should( List(foo) == [10, 0, 0, 0], "13" )
		
		Should( List(reversed([3,2,1])) == [1,2,3], "14")
    	
		def mymethod(x as int, *rest):
			Debug.Log("first arg:"+ x)
			for item in rest:
				Debug.Log( "extra param:"+ item)
				
		mymethod(3, "a", "c", "d")