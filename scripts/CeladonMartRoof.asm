CeladonMartRoof_Script:
	jp EnableAutoTextBoxDrawing

CeladonMartRoofDrinkList:
	db COFFEE
	db 0 ; end

CeladonMartRoofScript_GiveDrinkToGirl:
	CheckEvent EVENT_GOT_TM13
	jr nz, .alreadyGaveDrink
	ld hl, CeladonMartRoofLittleGirlYayFreshWaterText
	call PrintText
	call RemoveItemByIDBank12
	lb bc, COFFEE, 1
	call GiveItem
	jr nc, .bagFull
	ld hl, CeladonMartRoofLittleGirlReceivedTM13Text
	call PrintText
	SetEvent EVENT_GOT_TM13
	ret
.bagFull
	ld hl, CeladonMartRoofLittleGirlNoRoomText
	jp PrintText
.alreadyGaveDrink
	ld hl, CeladonMartRoofLittleGirlImNotThirstyText
	jp PrintText

RemoveItemByIDBank12:
	farjp RemoveItemByID

CeladonMartRoofLittleGirlGiveHerWhichDrinkText:
	text_far _CeladonMartRoofLittleGirlGiveHerWhichDrinkText
	text_end

CeladonMartRoofLittleGirlYayFreshWaterText:
	text_far _CeladonMartRoofLittleGirlYayFreshWaterText
	text_waitbutton
	text_end

CeladonMartRoofLittleGirlReceivedTM13Text:
	text_far _CeladonMartRoofLittleGirlReceivedTM13Text
	sound_get_item_1
	text_far _CeladonMartRoofLittleGirlTM13ExplanationText
	text_waitbutton
	text_end

CeladonMartRoofLittleGirlYaySodaPopText:
	text_far _CeladonMartRoofLittleGirlYaySodaPopText
	text_waitbutton
	text_end

CeladonMartRoofLittleGirlReceivedTM48Text:
	text_far _CeladonMartRoofLittleGirlReceivedTM48Text
	sound_get_item_1
	text_far _CeladonMartRoofLittleGirlTM48ExplanationText
	text_waitbutton
	text_end

CeladonMartRoofLittleGirlYayLemonadeText:
	text_far _CeladonMartRoofLittleGirlYayLemonadeText
	text_waitbutton
	text_end

CeladonMartRoofLittleGirlReceivedTM49Text:
	text_far _CeladonMartRoofLittleGirlReceivedTM49Text
	sound_get_item_1
	text_far _CeladonMartRoofLittleGirlTM49ExplanationText
	text_waitbutton
	text_end

CeladonMartRoofLittleGirlNoRoomText:
	text_far _CeladonMartRoofLittleGirlNoRoomText
	text_waitbutton
	text_end

CeladonMartRoofLittleGirlImNotThirstyText:
	text_far _CeladonMartRoofLittleGirlImNotThirstyText
	text_waitbutton
	text_end

CeladonMartRoofScript_PrintDrinksInBag:
	ld hl, wFilteredBagItems
	xor a
	ldh [hItemCounter], a
.loop
	ld a, [hli]
	cp $ff
	ret z
	push hl
	ld [wd11e], a
	call GetItemName
	hlcoord 2, 2
	ldh a, [hItemCounter]
	ld bc, SCREEN_WIDTH * 2
	call AddNTimes
	ld de, wcd6d
	call PlaceString
	ld hl, hItemCounter
	inc [hl]
	pop hl
	jr .loop

CeladonMartRoof_TextPointers:
	def_text_pointers
	dw_const CeladonMartRoofSuperNerdText,        TEXT_CELADONMARTROOF_SUPER_NERD
	dw_const CeladonMartRoofLittleGirlText,       TEXT_CELADONMARTROOF_LITTLE_GIRL
	dw_const CeladonMartRoofVendingMachineText,   TEXT_CELADONMARTROOF_VENDING_MACHINE1
	dw_const CeladonMartRoofVendingMachineText,   TEXT_CELADONMARTROOF_VENDING_MACHINE2
	dw_const CeladonMartRoofVendingMachineText,   TEXT_CELADONMARTROOF_VENDING_MACHINE3
	dw_const CeladonMartRoofCurrentFloorSignText, TEXT_CELADONMARTROOF_CURRENT_FLOOR_SIGN

CeladonMartRoofSuperNerdText:
	text_far _CeladonMartRoofSuperNerdText
	text_end

CeladonMartRoofLittleGirlText:
	text_asm
	call CeladonMartRoofScript_GiveDrinkToGirl
	jp TextScriptEnd

.GiveHerADrinkText:
	text_far _CeladonMartRoofLittleGirlGiveHerADrinkText
	text_end

CeladonMartRoofVendingMachineText:
	text_far _CeladonMartRoofLittleGirlImThirstyText
	text_end

CeladonMartRoofCurrentFloorSignText:
	text_far _CeladonMartRoofCurrentFloorSignText
	text_end
