//%attributes = {"invisible":true,"shared":true}

// Get info about current 4d app to deploy inside
var $app : 4D:C1709.Folder
$app:=Folder:C1567(Application file:C491; fk platform path:K87:2)

var $component : 4D:C1709.Folder
$component:=$app
If (Is macOS:C1572)
	$component:=$component.folder("Contents")
End if 
$component:=$component.folder("Components")

deployTo($component)