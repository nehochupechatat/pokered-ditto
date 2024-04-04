_Route1Youngster1MartSampleText::
	text "Awww, need some"
	line "healing supplies?"
	cont "Here you go!"
	prompt

_Route1Youngster1GotPotionText::
	text "<PLAYER> got"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_Route1Youngster1AlsoGotPokeballsText::
	text "You can visit"
	line "#MON MARTs"
	cont "anytime if you"
	cont "want help!"
	done

_Route1Youngster1NoRoomText::
	text "You have too much"
	line "stuff with you!"
	done

_Route1Youngster2Text::
	text "Oh no! A strong"
	line "DITTO broke loose?"

	para "It's a bit scary!"
	done

_Route1SignText::
	text "ROUTE 1"
	line "PALLET TOWN -"
	cont "VIRIDIAN CITY"
	done
