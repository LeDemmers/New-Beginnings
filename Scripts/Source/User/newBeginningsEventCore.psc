Event OnEnterBleedout()
     GotoState("Dying")
    endEvent
    ;================================================State Dying
    ;================================================
    Event OnBeginState()
         Player.SetGhost(True) 
         Player.ForceActorValue("Health", 2.0)
          Game.ShakeCamera(Player, 5, 0.1)
           Utility.Wait(3)
            BlackOutImod.ApplyCrossFade(15.0)
             GetReference().MoveTo(DungeonMarker)
              Utility.Wait(8)
               ImageSpaceModifier.RemoveCrossFade(6.0)
                Player.SetGhost(False)endEventEvent
                 OnEnterBleedout()
                endEventendState
; Above this line is junk code for reference
; Below this line is an attempt at state based operations.

auto State CheckForDying
    Event OnEnterBleedout()
        GotoState("Dying")
EndState

State Dying
    Event OnBeginState()
        If GetPlayer.IsEssential(true)
            SetEssential(bool abEssential = False) native
        EndIf
        Player.SetGhost(True)
        Player.ForceActorValue("Health", 2.0)
        BlackOutImod.ApplyCrossFade(15.0)
        GetReference().MoveTo(vSettlerActor)

EndState
