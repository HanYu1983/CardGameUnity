namespace HanLib.Card

class DefaultAnswer (IAnswer):
	
	Requirements as List:
		get:
			return []
			
	IsRequireSomething as bool:
		get:
			return Requirements.Count > 0