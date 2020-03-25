/**
* Empty iterator class. (could be considered has interface/protocol)
**/

/**
* Returns true if there are more elements. Otherwise, returns false.
**/
Function hasNext
	C_BOOLEAN:C305($0)
	$0:=False:C215
	
/**
* Iterator on object keys
**/
Function next
	C_VARIANT:C1683($0)
	$0:=Null:C1517