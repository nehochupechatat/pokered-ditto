VermilionOldRodHouse_Script:
	jp EnableAutoTextBoxDrawing

VermilionOldRodHouse_TextPointers:
	def_text_pointers
	dw_const VermilionOldRodHouseFishingGuruText, TEXT_VERMILIONOLDRODHOUSE_FISHING_GURU

VermilionOldRodHouseFishingGuruText:
	text_asm
	ld hl, .ThatsSoDisappointingText
	call PrintText
	jp TextScriptEnd

.DoYouLikeToFishText:
	text_far _VermilionOldRodHouseFishingGuruDoYouLikeToFishText
	text_end

.TakeThisText:
	text_far _VermilionOldRodHouseFishingGuruTakeThisText
	sound_get_item_1
	text_far _VermilionOldRodHouseFishingGuruFishingIsAWayOfLifeText
	text_end

.ThatsSoDisappointingText:
	text_far _VermilionOldRodHouseFishingGuruThatsSoDisappointingText
	text_end

.HowAreTheFishBitingText:
	text_far _VermilionOldRodHouseFishingGuruHowAreTheFishBitingText
	text_end

.NoRoomText:
	text_far _VermilionOldRodHouseFishingGuruNoRoomText
	text_end
