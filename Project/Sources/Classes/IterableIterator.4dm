/**
* Iterator on object, which must implement `Iterable` length() and getValueAt(index)
**/
Class extends Iterator

Class constructor
	C_OBJECT:C1216($1)
	This:C1470.iterable:=$1
	This:C1470.cursor:=0
	
Function hasNext
	C_BOOLEAN:C305($0)
	C_VARIANT:C1683($length)
	If (Value type:C1509(This:C1470.iterable.length)=Is object:K8:27)  // formula
		$0:=This:C1470.cursor<Num:C11(This:C1470.iterable.length())
	Else 
		$0:=This:C1470.cursor<Num:C11($length)
	End if 
	
Function next
	C_VARIANT:C1683($0)
	$0:=This:C1470.iterable.getValueAt(This:C1470.cursor)
	This:C1470.cursor:=This:C1470.cursor+1