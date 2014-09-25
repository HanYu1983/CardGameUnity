namespace HanLib.Card

class DefaultGameState (IGameState):
	private _currentPhase as IPhase
	private _currentPlayer as IMaybe[of IPlayer]
	private _playerA as IMaybe[of IPlayer]
	private _playerB as IMaybe[of IPlayer]
	private _phaseList as List
	private _field as IField
	private _rule as IRule
	
	PlayerA as IMaybe[of IPlayer]:
		get:
			return _playerA
		set:
			_playerA = value
		
	PlayerB as IMaybe[of IPlayer]:
		get:
			return _playerB
		set:
			_playerB = value
		
	// list of IPhase
	PhaseList as List:
		get:
			return _phaseList
		set:
			_phaseList = value
	
	CurrentPhase as IPhase:
		get:
			return _currentPhase
		set:
			_currentPhase = value
		
	CurrentPlayer as IMaybe[of IPlayer]:
		get:
			return _currentPlayer
		set:
			_currentPlayer = value
		
	NextPlayer as IMaybe[of IPlayer]:
		get:
			return PlayerA if CurrentPlayer == PlayerA
			return PlayerB;
		
	Field as IField:
		get:
			return _field
		set: 
			_field = value
		
	Rule as IRule:
		get:
			return _rule
		set:
			_rule = value