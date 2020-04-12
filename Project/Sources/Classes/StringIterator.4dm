Class extends Iterator

Class constructor
	C_TEXT:C284($1)
	C_REAL:C285($2)
	This:C1470.str:=$1
	This:C1470.current:=1
	If (Count parameters:C259>1)
		This:C1470.current:=$2
	End if 
	
Function hasNext
	C_BOOLEAN:C305($0)
	$0:=This:C1470.current<=Length:C16(This:C1470.str)
	
Function next
	C_TEXT:C284($0)
	C_LONGINT:C283($index)
	$index:=This:C1470.current
	This:C1470.current:=This:C1470.current+1
	$0:=This:C1470.str[[$index]]