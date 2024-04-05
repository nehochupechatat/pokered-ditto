	object_const_def
	const_export VIRIDIANPOKECENTER_NURSE
	const_export VIRIDIANPOKECENTER_GENTLEMAN
	const_export VIRIDIANPOKECENTER_COOLTRAINER_M

ViridianPokecenter_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 1
	warp_event  4,  7, LAST_MAP, 1

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, STAY, DOWN, TEXT_VIRIDIANPOKECENTER_NURSE
	object_event  1,  3, SPRITE_GENTLEMAN, WALK, UP_DOWN, TEXT_VIRIDIANPOKECENTER_GENTLEMAN
	object_event  3,  4, SPRITE_COOLTRAINER_M, STAY, NONE, TEXT_VIRIDIANPOKECENTER_COOLTRAINER_M

	def_warps_to VIRIDIAN_POKECENTER
