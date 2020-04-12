# Range

A numeric range, useful to iterate over a range of numbers or create a collection of numbers

```4d
$it:=it .Range.new(1;7)
While ($it.hasNext())
	$value:=$it.next() //1, then 2, ..., until 7

End while 
```

```4d
it .Range.new(1;7).toCollection() // New collection(1;2;3;4;5;6;7)
```