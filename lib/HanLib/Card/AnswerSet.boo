namespace HanLib.Card

import System.Linq

class AnswerSet (DefaultAnswer):
	
	private _list as List
	
	// list of IAnswer
	AnswerList as List:
		get:
			return _list
		set:
			_list = value
	
	Requirements as List:
		get:
			def merge(ori as List, other) as List:
				oa = other as IAnswer
				return ori + oa.Requirements
			return _list.Aggregate([], merge)
