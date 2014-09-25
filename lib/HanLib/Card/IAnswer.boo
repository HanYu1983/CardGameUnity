namespace HanLib.Card

interface IAnswer:
	AnswerFor as IQuestion:
		get;
	// return IRequirement list
	Requirements as List:
		get;
		
	IsRequireSomething as bool:
		get;