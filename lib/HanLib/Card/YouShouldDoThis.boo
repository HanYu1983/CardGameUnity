namespace HanLib.Card

class YouShouldDoThis (DefaultAnswer):
	private _actions as List
	// list of IAction
	ActionList as List:
		get:
			return _actions
		set:
			_actions = value