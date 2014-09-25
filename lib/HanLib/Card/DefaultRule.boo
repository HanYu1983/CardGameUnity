namespace HanLib.Card

class DefaultRule (IRule):
	private _ext as IRule
	
	ExtendRule as IRule:
		get:
			return _ext
		set:
			_ext = value
			
	def Ask(question as IQuestion) as IAnswer:
		return _ext.Ask(question)