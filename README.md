# Iterable
Iteration classes for object instance, collection and custom object

## Pattern

[Iterator pattern](https://en.wikipedia.org/wiki/Iterator_pattern)
> In object-oriented programming, the iterator pattern is a design pattern in which an iterator is used to traverse a container and access the container's elements. The iterator pattern decouples algorithms from containers; in some cases, algorithms are necessarily container-specific and thus cannot be decoupled.

### In 4d using iterator provided by this component

```4d
While ($it.hasNext())
	$aValue:=$it.next()
  
End while 
````

## Usage

There is different type of iterator provided, to traverse a collection, an object keys, or values or entries or even custom algorithms.

|Type|Description|
|---|---|
|it.CollectionIterator|Iterate over a collection|
|it.SelectionIterator|Iterate over a selection|
|it.ObjectEntryIterator|Iterate over an object entries collection|
|it.ObjectKeyIterator|Iterate over an object keys collection||
|it.ObjectValueIterator|Iterate over an object values collection||
|it.IterableIterator|Iterate on object which implements two formula: `length()->int` and `getValueAt(index)->value`|

See some usage in [tests](https://github.com/mesopelagique/Iterable/blob/master/Project/Sources/Methods/test_iterator.4dm)


## Go further

If a class have a function `iterator` which return an `Iterator` instance, we could imagine `For each` language keyword work with it, instead of keys browsing
