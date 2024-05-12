VermilionTradeHouse_Script:
	jp EnableAutoTextBoxDrawing

VermilionTradeHouse_TextPointers:
	def_text_pointers
	dw_const VermilionTradeHouseLittleGirlText, TEXT_VERMILIONTRADEHOUSE_LITTLE_GIRL

VermilionTradeHouseLittleGirlText:
	text "What? What do"
	line "you want from me?"
	
	para "..I knew I should"
	line "have locked the"
	cont "doors."
	done
	text_end
