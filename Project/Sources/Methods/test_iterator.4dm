//%attributes = {}
C_OBJECT:C1216($it)

/**
* Object collection
**/

C_COLLECTION:C1488($col)
$col:=New collection:C1472("1";"2";"3";"4";"5";"6";"7")
$it:=it .CollectionIterator.new($col)

C_LONGINT:C283($cpt)
$cpt:=0
While ($it.hasNext())
	
	$value:=$it.next()
	$cpt:=$cpt+1
End while 
ASSERT:C1129($col.length=$cpt)

/**
* Object key
**/
C_OBJECT:C1216($obj;$entry)
C_TEXT:C284($key)
C_VARIANT:C1683($value)
$obj:=New object:C1471("1";"2";"3";"4")
$it:=it .ObjectKeyIterator.new($obj)

$cpt:=0
While ($it.hasNext())
	$key:=$it.next()
	ASSERT:C1129($obj[$key]#Null:C1517)
	$cpt:=$cpt+1
End while 

ASSERT:C1129(OB Keys:C1719($obj).length=$cpt)

/**
* Object entry
**/

$it:=it .ObjectEntryIterator.new($obj)

$cpt:=0
While ($it.hasNext())
	$entry:=$it.next()
	ASSERT:C1129($obj[$entry.key]=$entry.value)
	$cpt:=$cpt+1
End while 

ASSERT:C1129(OB Entries:C1720($obj).length=$cpt)

/**
* Object value
**/

$it:=it .ObjectEntryIterator.new($obj)

$cpt:=0
While ($it.hasNext())
	$value:=$it.next()
	$cpt:=$cpt+1
End while 

ASSERT:C1129(OB Entries:C1720($obj).length=$cpt)

/**
* Custom object value
**/
$obj:=New object:C1471("internalCol";$col)
$obj.length:=Formula:C1597(This:C1470.internalCol.length)
$obj.getValueAt:=Formula:C1597(This:C1470.internalCol[$1])
$it:=cs:C1710.IterableIterator.new($obj)

$cpt:=0
While ($it.hasNext())
	$value:=$it.next()
	$cpt:=$cpt+1
End while 

ASSERT:C1129($col.length=$cpt)
ASSERT:C1129(OB Entries:C1720($obj).length#$cpt)  // bad test if col size is same as key size

/**
* Custom class object value
**/
$obj:=cs:C1710.Test_ClassIterable.new($col)
$it:=cs:C1710.IterableIterator.new($obj)

$cpt:=0
While ($it.hasNext())
	$value:=$it.next()
	$cpt:=$cpt+1
End while 

ASSERT:C1129($col.length=$cpt)
ASSERT:C1129(OB Entries:C1720($obj).length#$cpt)


/**
* Selection
**/

$obj:=ds:C1482._Test.all()
If ($obj.length=0)
	ds:C1482._Test.new().save()
	$obj:=ds:C1482._Test.all()
End if 
$it:=cs:C1710.SelectionIterator.new($obj)

C_LONGINT:C283($cpt)
$cpt:=0
While ($it.hasNext())
	
	$value:=$it.next()
	$cpt:=$cpt+1
End while 
ASSERT:C1129($obj.length=$cpt)
