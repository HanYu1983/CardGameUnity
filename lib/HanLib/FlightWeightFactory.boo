# ------------------------------------------------------------------------------
# This code was automatically generated by Boo.Lang.CodeDom v.0.9.7.0.
# 
#      Changes to this file may cause incorrect behavior and will be lost if 
#      the code is regenerated.
# ------------------------------------------------------------------------------

import System

class FlightWeightFactory:
	private _values = {}
	def GetObject[T](key, fn as callable() as object ) as T:
		if _values.Contains(key) is not true:
			ret = fn()
			_values.Add(key, ret)
			return ret
		else:
			return _values[key]