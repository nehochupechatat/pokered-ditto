_BluesHouseDaisyRivalAtLabText::
	text "Hi <PLAYER>!"
	line "<RIVAL> is out at"
	cont "Grandpa's lab."
	done

_BluesHouseDaisyOfferMapText::
	text "Oh no! A stray"
	line "#MON! Get out!"
	prompt

_GotMapText::
	text "DAISY dropped the"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_BluesHouseDaisyBagFullText::
	text "You have too much"
	line "stuff with you."
	done

_BluesHouseDaisyUseMapText::
	text "Well, shit."
	line "It stole my"
	cont "TOWN MAP."
	done

_BluesHouseDaisyWalkingText::
	line "Why are you here?"
	cont "Stray #MON are"
	cont "not allowed."
	done

_BluesHouseTownMapText::
	text "It's a big map!"
	line "This is useful!"
	done
