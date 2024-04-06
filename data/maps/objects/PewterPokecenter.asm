	object_const_def
	const_export PEWTERPOKECENTER_NURSE
	const_export PEWTERPOKECENTER_GENTLEMAN
	const_export PEWTERPOKECENTER_JIGGLYPUFF
	const_export PEWTERPOKECENTER_LINK_RECEPTIONIST

PewterPokecenter_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 7
	warp_event  4,  7, LAST_MAP, 7

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, STAY, DOWN, TEXT_PEWTERPOKECENTER_NURSE
	object_event 11,  7, SPRITE_GENTLEMAN, STAY, LEFT, TEXT_PEWTERPOKECENTER_GENTLEMAN
	object_event  1,  3, SPRITE_FAIRY, STAY, DOWN, TEXT_PEWTERPOKECENTER_JIGGLYPUFF
	object_event 19, 13, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, TEXT_PEWTERPOKECENTER_LINK_RECEPTIONIST

	def_warps_to PEWTER_POKECENTER
