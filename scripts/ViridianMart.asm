ViridianMart_Script:
	jp EnableAutoTextBoxDrawing

ViridianMart_TextPointers:
	; This becomes the primary text pointers table when Oak's parcel has been delivered.
	def_text_pointers
	dw_const ViridianMartClerkText,        TEXT_VIRIDIANMART_CLERK
	dw_const ViridianMartYoungsterText,    TEXT_VIRIDIANMART_YOUNGSTER
	dw_const ViridianMartCooltrainerMText, TEXT_VIRIDIANMART_COOLTRAINER_M

ViridianMartYoungsterText:
	text_far _ViridianMartYoungsterText
	text_end

ViridianMartCooltrainerMText:
	text_far _ViridianMartCooltrainerMText
	text_end
