namespace HanLib.Card

import HanLib

class Deck (DefaultSwapperContainer, IDeck):
		
	IsEmpty as bool:
		get:
			return Values.Count == 0
			
	def Shuffle():
		pass
		
	def Peek(amount as int) as List:
		return Values[-amount:]
		
	def Draw(player as ISwapperContainer):
		Swap( self, player, Values[-1] )
		
	def Push(player as ISwapperContainer, card):
		Swap( player, self, card )
		
	def Insert(player as ISwapperContainer, card, index as int ):
		SwapToIndex( player, self, index, card )
		
	def InsertBottom(player as ISwapperContainer, card):
		SwapToIndex( player, self, 0, card )