	object_const_def
	const_export CERULEANTRADEHOUSE_GRANNY

CeruleanTradeHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 2
	warp_event  3,  7, LAST_MAP, 2

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_GRANNY, STAY, LEFT, TEXT_CERULEANTRADEHOUSE_GRANNY

	def_warps_to CERULEAN_TRADE_HOUSE
