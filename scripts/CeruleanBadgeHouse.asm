CeruleanBadgeHouse_Script:
	ld a, TRUE
	ld [wAutoTextBoxDrawingControl], a
	dec a
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ret

CeruleanBadgeHouse_TextPointers:
	def_text_pointers
	dw_const CeruleanBadgeHouseMiddleAgedManText, TEXT_CERULEANBADGEHOUSE_MIDDLE_AGED_MAN

CeruleanBadgeHouseMiddleAgedManText:
	text_asm
	ld hl, .Text
	call PrintText
	jp TextScriptEnd

.Text:
	text_far _CeruleanBadgeHouseMiddleAgedManText
	text_end

.WhichBadgeText:
	text_far _CeruleanBadgeHouseMiddleAgedManWhichBadgeText
	text_end

.VisitAnyTimeText:
	text_far _CeruleanBadgeHouseMiddleAgedManVisitAnyTimeText
	text_end

CeruleanBadgeHouseBadgeTextPointers:
	table_width 2, CeruleanBadgeHouseBadgeTextPointers
	dw CeruleanBadgeHouseBoulderBadgeText
	dw CeruleanBadgeHouseCascadeBadgeText
	dw CeruleanBadgeHouseThunderBadgeText
	dw CeruleanBadgeHouseRainbowBadgeText
	dw CeruleanBadgeHouseSoulBadgeText
	dw CeruleanBadgeHouseMarshBadgeText
	dw CeruleanBadgeHouseVolcanoBadgeText
	dw CeruleanBadgeHouseEarthBadgeText
	assert_table_length NUM_BADGES

CeruleanBadgeHouseBoulderBadgeText:
	text_far _CeruleanBadgeHouseBoulderBadgeText
	text_end

CeruleanBadgeHouseCascadeBadgeText:
	text_far _CeruleanBadgeHouseCascadeBadgeText
	text_end

CeruleanBadgeHouseThunderBadgeText:
	text_far _CeruleanBadgeHouseThunderBadgeText
	text_end

CeruleanBadgeHouseRainbowBadgeText:
	text_far _CeruleanBadgeHouseRainbowBadgeText
	text_end

CeruleanBadgeHouseSoulBadgeText:
	text_far _CeruleanBadgeHouseSoulBadgeText
	text_end

CeruleanBadgeHouseMarshBadgeText:
	text_far _CeruleanBadgeHouseMarshBadgeText
	text_end

CeruleanBadgeHouseVolcanoBadgeText:
	text_far _CeruleanBadgeHouseVolcanoBadgeText
	text_end

CeruleanBadgeHouseEarthBadgeText:
	text_far _CeruleanBadgeHouseEarthBadgeText
	text_end
