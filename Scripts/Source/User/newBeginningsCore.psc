Scriptname newBeginningsCore extends Quest

;Properties
Actor Property playerRef Auto mandatory
Quest Property newBeginningsRecovery const auto mandatory
;=================

;Script Globals
Form[] playerEquippedArmor
int prevOutfitChoice = -1
;=================

;States / Events
;=================
auto State WaitingForDeath
	;on init verify if mod enabled
	Event OnPlayerLoadGame()
		;if still not started try again
		If !isModEnabled()
			newB_Message_NotLoaded.Show()
			EndIf
	EndEvent

	Event OnBeginState()
		GetPlayer.
	EndEvent

	;Player enters low health
	Event OnEnterBleedout()
		GotoState("")
	EndEvent
EndState

State Respawning
	Event OnBeginState(string asOldState)
		playerRef.StopCombat()
		playerRef.StopCombatAlarm()
		
		;Move the player to somewhere safe?
		;finish this eventually
	EndEvent
EndState
