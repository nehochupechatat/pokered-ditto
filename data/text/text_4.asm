_PokemartGreetingText::
	text "Aww, who's a cute"
	line "little #MON?"
	para "Do you want"
	line "something?"
	done

_PokemonFaintedText::
	text_ram wcd6d
	text_start
	line "fainted!"
	done

_PlayerBlackedOutText::
	text "DITTO doesn't have"
	line "energy to TRANSFORM!"

	para "DITTO fainted!"
	prompt

_RepelWoreOffText::
	text "REPEL's effect"
	line "wore off."
	done

_PokemartBuyingGreetingText::
	text "Take your time."
	done

_PokemartTellBuyPriceText::
	text_ram wStringBuffer
	text "?"
	line "Is that what"
	cont "you want?"
	done

_PokemartBoughtItemText::
	text "Here you are!"
	line "Thank you!"
	prompt

_PokemartNotEnoughMoneyText::
	text "You don't have"
	line "enough money."
	prompt

_PokemartItemBagFullText::
	text "You can't carry"
	line "any more items."
	prompt

_PokemonSellingGreetingText::
	text "What would you"
	line "like to give?"
	done

_PokemartTellSellPriceText::
	text "I can pay you"
	line "¥@"
	text_bcd hMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text " for that."
	done

_PokemartItemBagEmptyText::
	text "You don't have"
	line "anything to give."
	prompt

_PokemartUnsellableItemText::
	text "I think you should"
	line "keep this."
	prompt

_PokemartThankYouText::
	text "Thank you!"
	done

_PokemartAnythingElseText::
	text "Is there anything"
	line "else I can do?"
	done

_LearnedMove1Text::
	text_ram wLearnMoveMonName
	text " learned"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_WhichMoveToForgetText::
	text "Which move should"
	next "be forgotten?"
	done

_AbandonLearningText::
	text "Abandon learning"
	line "@"
	text_ram wStringBuffer
	text "?"
	done

_DidNotLearnText::
	text_ram wLearnMoveMonName
	text_start
	line "did not learn"
	cont "@"
	text_ram wStringBuffer
	text "!"
	prompt

_TryingToLearnText::
	text_ram wLearnMoveMonName
	text " is"
	line "trying to learn"
	cont "@"
	text_ram wStringBuffer
	text "!"

	para "But, @"
	text_ram wLearnMoveMonName
	text_start
	line "can't learn more"
	cont "than 4 moves!"

	para "Delete an older"
	line "move to make room"
	cont "for @"
	text_ram wStringBuffer
	text "?"
	done

_OneTwoAndText::
	text "1, 2 and...@"
	text_end

_PoofText::
	text " Poof!@"
	text_end

_ForgotAndText::
	text_start
	para "@"
	text_ram wLearnMoveMonName
	text " forgot"
	line "@"
	text_ram wcd6d
	text "!"

	para "And..."
	prompt

_HMCantDeleteText::
	text "HM techniques"
	line "can't be deleted!"
	prompt

_PokemonCenterWelcomeText::
	text "Oh no! A stray"
	line "DITTO!"

	para "Are you hurt,"
	line "you poor thing?"
	prompt

_ShallWeHealYourPokemonText::
	text "Shall we heal you?"
	done

_NeedYourPokemonText::
	text "OK!"
	done

_PokemonFightingFitText::
	text "Glad to see you"
	line "doing better."
	prompt

_PokemonCenterFarewellText::
	text "Come here anytime!"
	done

_CableClubNPCAreaReservedFor2FriendsLinkedByCableText::
	text "This area is"
	line "reserved for 2"
	cont "friends who are"
	cont "linked by cable."
	done

_CableClubNPCWelcomeText::
	text "Welcome to the"
	line "Cable Club!"
	done

_CableClubNPCPleaseApplyHereHaveToSaveText::
	text "Please apply here."

	para "Before opening"
	line "the link, we have"
	cont "to save the game."
	done

_CableClubNPCPleaseWaitText::
	text "Please wait.@"
	text_end

_CableClubNPCLinkClosedBecauseOfInactivityText::
	vc_patch Change_link_closed_inactivity_message
IF DEF(_RED_VC) || DEF(_BLUE_VC)
	text "The link has been"
	line "closed because of"
	cont "inactivity."
ELSE
	text "The link has been"
	line "closed because of"
	cont "inactivity."
ENDC
	vc_patch_end

	para "Please contact"
	line "your friend and"
	cont "come again!"
	done