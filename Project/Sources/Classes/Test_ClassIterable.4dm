

Class constructor
	C_COLLECTION:C1488($1)
	This:C1470.collection:=$1
	
	
Function length
	C_LONGINT:C283($0)
	$0:=This:C1470.collection.length
	
Function getValueAt
	C_VARIANT:C1683($0)
	C_LONGINT:C283($1)
	$0:=This:C1470.collection[$1]