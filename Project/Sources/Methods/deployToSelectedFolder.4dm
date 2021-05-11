//%attributes = {"invisible":true,"shared":true}
var $folder : Text
$folder:=Select folder:C670("Select a folder to deploy components.")

If (Length:C16($folder)>0)
	deployTo(Folder:C1567($folder; fk platform path:K87:2))
End if 