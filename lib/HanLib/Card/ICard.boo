namespace HanLib.Card

interface ICard:
	Owner as IPlayer:
		get; set;
	Rule as IMaybe[IRule]:
		get; set;