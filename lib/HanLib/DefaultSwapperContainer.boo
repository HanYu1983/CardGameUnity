namespace HanLib

class DefaultSwapperContainer (ISwapperContainer):
	private _values as List = []
	
	Values as List:
		get:
			return _values
	
	def IsContains( target as object ) as bool:
		return _values.Find({v | v == target}) != null
		
	def GetAndRemove( target as object ) as object:
		if IsContains( target ):
			_values.Remove( target )
			return target
		else:
			return null
					
	def Add( v ):
		_values.Add( v )
		
	def Insert(idx as int, v ):
		_values.Insert( idx, v )
		
	def ToString() as string:
		return _values.ToString()
