/**
* Iterator on collection
**/
Class extends Iterator

Class constructor
	C_COLLECTION:C1488($1)
	This:C1470.collection:=$1
	This:C1470.cursor:=0
	
Function hasNext
	C_BOOLEAN:C305($0)
	$0:=This:C1470.cursor<This:C1470.collection.length
	
Function next
	C_VARIANT:C1683($0)
	$0:=This:C1470.collection[This:C1470.cursor]
	This:C1470.cursor:=This:C1470.cursor+1
	
	  // Reversable iterator
/*
Function hasPrevious()
$0:=This.collection.length>0 & This.cursor<-1
	
Function previous()
C_VARIANT($0)
$0:=This.collection[This.cursor]
This.cursor:=This.cursor-1
 */