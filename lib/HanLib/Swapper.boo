namespace HanLib

interface ISwapperContainer:
	def IsContains( v as object ) as bool
	def GetAndRemove( v as object ) as object
	def Add( v as object )
	def Insert( idx as int, v as object )

def Swap( con1 as ISwapperContainer, con2 as ISwapperContainer, v as object ) as bool:
	if con1.IsContains(v):
		con2.Add( con1.GetAndRemove(v) )
		return true
	else:
		return false
		
def SwapToIndex( con1 as ISwapperContainer, con2 as ISwapperContainer, idx as int, v as object ) as bool:
	if con1.IsContains(v):
		con2.Insert( idx, con1.GetAndRemove(v) )
		return true
	else:
		return false