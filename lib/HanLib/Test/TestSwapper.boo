namespace HanLib

class TestSwapper(TestBase):
	def Start():
		swap1 = DefaultSwapperContainer()
		swap2 = DefaultSwapperContainer()
		
		swap1.Add(0)
		swap1.Add(1)
		swap1.Add(2)
		
		Should( swap1.Values == [0, 1, 2], '0' )
		
		Swap( swap1, swap2, 1 )
		
		Should( swap1.Values == [0, 2], '1' )
		Should( swap2.Values == [1], '2' )
		
		Should( Swap( swap1, swap2, 3 ) == false, '3' )
		