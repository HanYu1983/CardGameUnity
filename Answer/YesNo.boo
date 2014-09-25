
class YesNo (DefaultAnswer):
	private _yes as bool
	
	IsYes as bool:
		get:
			return _yes
		set:
			_yes = value
			
	IsNo as bool:
		get:
			return not IsYes
