Route2Gate_Script:
	jp EnableAutoTextBoxDrawing

Route2Gate_TextPointers:
	def_text_pointers
	dw_const Route2GateOaksAideText,  TEXT_ROUTE2GATE_OAKS_AIDE
	dw_const Route2GateYoungsterText, TEXT_ROUTE2GATE_YOUNGSTER

Route2GateOaksAideText:
	text_asm
	CheckEvent EVENT_GOT_HM05
	ld hl, .HM02ExplanationText
	jr nz, .got_item
	ld hl, .Text
	call PrintText
	lb bc, HM_FLASH, 1
	call GiveItem
	jr nc, .bag_full
	SetEvent EVENT_GOT_HM05
	ld hl, .ReceivedHM02Text
	jr .got_item
.bag_full
	ld hl, .HM02NoRoomText
.got_item
	call PrintText
	jp TextScriptEnd

.Text:
	text "Oh crap!"
	line "A wild DITTO!"
	done
	text_end

.ReceivedHM02Text:
	text "The AIDE dropped"
	line "a PARAS!"
	para "DITTO learned how"
	line "to turn into one!"
	done
	text_end

.HM02ExplanationText:
	text_far _Route2GateOaksAideFlashExplanationText
	text_end

.HM02NoRoomText:
	text "The AIDE dropped"
	line "a PARAS!"
	para "But, DITTO's BODY"
	line "absorbed enough"
	cont "items already."
	done
	text_end

.FlashExplanationText:
	text_far _Route2GateOaksAideFlashExplanationText
	text_end

Route2GateYoungsterText:
	text_far _Route2GateYoungsterText
	text_end
