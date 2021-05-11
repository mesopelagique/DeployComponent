//%attributes = {"invisible":true,"shared":true}
#DECLARE($component : 4D:C1709.Folder)->$status : Object

// Compile the current project
var $status; $settings : Object
$settings:=New object:C1471()

var $databaseFolder : 4D:C1709.Folder
$databaseFolder:=Folder:C1567(fk database folder:K87:14; *)

// ... using dependencies 
If ($databaseFolder.folder("Components").exists)
	$settings.components:=New collection:C1472
	var $dependency : 4D:C1709.Folder
	For each ($dependency; $databaseFolder.folder("Components").folders())
		If ($dependency.file($dependency.name+".4DZ").exists)
			$settings.components.push($dependency.file($dependency.name+".4DZ"))
		End if 
	End for each 
End if 

$status:=Compile project:C1760($settings)

If ($status.success)
	// archive and move it
	var $destination : 4D:C1709.File
	$destination:=$component
	$destination:=$databaseFolder.copyTo($destination; $databaseFolder.name+".4dbase"; fk overwrite:K87:5)
	$destination.folder("Project").delete(Delete with contents:K24:24)
	
	$destination:=$destination.file($databaseFolder.name+".4dz")
	$status:=ZIP Create archive:C1640($databaseFolder.folder("Project"); $destination)
	
End if 


// display status (remove this code if no gui)
If ($status.success)
	If (Shift down:C543)
		SHOW ON DISK:C922($destination.platformPath)
	Else 
		ALERT:C41("🚀 "+$databaseFolder.name+" deployed to "+$component.path)
	End if 
Else 
	ALERT:C41("⛔️ "+JSON Stringify:C1217($status; *))
End if 
