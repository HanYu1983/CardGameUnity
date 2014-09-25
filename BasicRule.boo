
class BasicRule (DefaultRule):
	def Ask(question as IQuestion) as IAnswer:
		if question isa WhatIsNextPhase:
			return ThePhase()
		elif question isa CanIgoThatPhase:
			return YesNo(IsYes: false)
		return super.Ask(question)
	
