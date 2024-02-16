Scriptname QPScript extends ActiveMagicEffect Hidden 

Quest Property ScanQuest Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
  If(!ScanQuest.Start())
    Debug.MessageBox("No Porting Location found")
  EndIf
  ObjectReference portloc = (ScanQuest.GetAlias(0) as ReferenceAlias).GetReference()
  akCaster.MoveTo(portloc)
  ScanQuest.Stop()
EndEvent