//%attributes = {}
ARRAY TEXT:C222($components; 0)
COMPONENT LIST:C1001($components)
If (Find in array:C230($components; "DeployComponent")<0)
	
	CONFIRM:C162("DeployComponent is not installed in your app.\nInstall it?")
	
	If (OK=1)
		deployToApp
		RESTART 4D:C1292()
	Else 
		// nothing to do
	End if 
	
End if 
