/**
* Iterator on selection
**/
Class extends Iterator

Class constructor
	C_OBJECT:C1216($1)
	This:C1470.selection:=$1
	This:C1470.cursor:=0
	
Function hasNext
	C_BOOLEAN:C305($0)
	$0:=This:C1470.cursor<This:C1470.selection.length
	
Function next
	C_VARIANT:C1683($0)
	$0:=This:C1470.selection[This:C1470.cursor]
	This:C1470.cursor:=This:C1470.cursor+1