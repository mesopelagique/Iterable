
Class constructor
	C_REAL:C285($1;$2)
	This:C1470.from:=$1
	This:C1470.to:=$2
	This:C1470.current:=This:C1470.from
	
Function iterator
	C_OBJECT:C1216($0)
	$0:=cs:C1710.Range.new(This:C1470.from;This:C1470.to)
	
Function hasNext
	C_BOOLEAN:C305($0)
	$0:=This:C1470.current<=This:C1470.to
	
Function next
	C_REAL:C285($0)
	$0:=This:C1470.current
	This:C1470.current:=This:C1470.current+1
	
Function toCollection
	C_COLLECTION:C1488($0)
	$0:=IteratorToCollection (This:C1470.iterator())