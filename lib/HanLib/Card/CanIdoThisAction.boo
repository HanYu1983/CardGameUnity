namespace HanLib.Card

class CanIdoThisAction (DefaultQuestion):
	private _action as IAction
	
	Action as IAction:
		get:
			return _action
		set:
			_action = value
