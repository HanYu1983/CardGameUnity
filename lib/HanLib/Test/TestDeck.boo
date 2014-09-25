# ------------------------------------------------------------------------------
# This code was automatically generated by Boo.Lang.CodeDom v.0.9.7.0.
# 
#      Changes to this file may cause incorrect behavior and will be lost if 
#      the code is regenerated.
# ------------------------------------------------------------------------------

import HanLib.Card
import HanLib

class TestDeck (TestBase):
	
	def Start():
		deck = Deck() 
		player = Deck()
		
		for i in range(52):
			deck.Add(i)
		
		Should( deck.Values == List(range(52)), '0' )
		
		deck.Draw( player )
		deck.Draw( player )
		
		Should( player.Peek(2) == [51, 50], '1' )
		
		deck.InsertBottom( player, 51 )
		
		Should( deck.Values[0] == 51, '2' )
		Should( player.Peek(1) == [50], '3' )
		
		deck.Insert( player, 50, 1 )
		
		Should( deck.Values[1] == 50, '4' )
		Should( player.IsEmpty, '5' )
		Should( player.Peek(2) == [], '6' )