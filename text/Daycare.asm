_DaycareGentlemanIntroText::
	text "Oh wow! A #MON"
	line "that can turn to"
	cont "anything?"
	para "I wonder if it"
	line "can breed and"
	cont "make the perfect"
	cont "EGGs, just like"
	cont "how the TRAINERs"
	cont "want it?"
	done

_DaycareGentlemanWhichMonText::
	text "Which #MON"
	line "should I raise?"
	prompt

_DaycareGentlemanWillLookAfterMonText::
	text "Fine, I'll look"
	line "after @"
	text_ram wcd6d
	text_start
	cont "for a while."
	prompt

_DaycareGentlemanComeSeeMeInAWhileText::
	text "Come see me in"
	line "a while."
	done

_DaycareGentlemanMonHasGrownText::
	text "Your @"
	text_ram wcd6d
	text_start
	line "has grown a lot!"

	para "By level, it's"
	line "grown by @"
	text_decimal wDayCareNumLevelsGrown, 1, 3
	text "!"

	para "Aren't I great?"
	prompt

_DaycareGentlemanOweMoneyText::
	text "You owe me ¥@"
	text_bcd wDayCareTotalCost, 2 | LEADING_ZEROES | LEFT_ALIGN
	text_start
	line "for the return"
	cont "of this #MON."
	done

_DaycareGentlemanGotMonBackText::
	text "<PLAYER> got"
	line "@"
	text_ram wDayCareMonName
	text " back!"
	done

_DaycareGentlemanMonNeedsMoreTimeText::
	text "Back already?"
	line "Your @"
	text_ram wcd6d
	text_start
	cont "needs some more"
	cont "time with me."
	prompt
