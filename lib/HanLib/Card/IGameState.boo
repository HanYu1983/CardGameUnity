namespace HanLib.Card

interface IGameState:
	CurrentPhase as IPhase:
		get; set;
	CurrentPlayer as IMaybe[of IPlayer]:
		get; set;
	NextPlayer as IMaybe[of IPlayer]:
		get;
	Field as IField:
		get;
	Rule as IRule:
		get;