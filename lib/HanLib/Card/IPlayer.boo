namespace HanLib.Card

interface IPlayer:
	AllCard as IDeck:
		get;
	def DrawCard( fromDeck as IDeck )
	def PutCardToField( card as ICard, field as IField )
	def MoveCardToField( card as ICard, fromField as IField, toField as IField )