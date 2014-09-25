namespace HanLib.Card

interface IDeck (ISwapperContainer):
	
	IsEmpty as bool:
		get;
		
	def Shuffle()
	
	def Peek(amount as int) as List
		
	def Draw(player as ISwapperContainer)
		
	def Push(player as ISwapperContainer, card)
		
	def Insert(player as ISwapperContainer, card, index as int )
		
	def InsertBottom(player as ISwapperContainer, card)
