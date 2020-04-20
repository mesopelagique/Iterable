# Iterable
[![language][code-shield]][code-url] [![language-top][code-top]][code-url] ![code-size][code-size] [![release][release-shield]][release-url] [![license][license-shield]][license-url] [![discord][discord-shield]][discord-url]

Iteration classes for string, range, object instance, collection and custom object

## Pattern

[Iterator pattern](https://en.wikipedia.org/wiki/Iterator_pattern)
> In object-oriented programming, the iterator pattern is a design pattern in which an iterator is used to traverse a container and access the container's elements. The iterator pattern decouples algorithms from containers; in some cases, algorithms are necessarily container-specific and thus cannot be decoupled.

### In 4D using iterator provided by this component

```4d
While ($it.hasNext())
  $aValue:=$it.next()
  // do something
End while 
````

## Usage

You can iterate over different type using the same way

### Range

Iterate over a range of numeric

```4d
$it:=it .Range.new(1;7)
While ($it.hasNext())
	$value:=$it.next() //1, then 2, ..., until 7

End while 
```

```4d
it .Range.new(1;7).toCollection() // New collection(1;2;3;4;5;6;7)
```

### String

Iterate over string characters, transform it to collection

```4d
it .StringIterator.new("Hello World").toCollection() // New collection("H";"e";"l";"l";"o";" ";"W";"o";"r";"l";"d")
```

eq. of `[..."Hello World"]` in some languages

### Collection & Selection
There is different type of iterator provided, to traverse a collection, an object keys, or values or entries or even custom algorithms.

|Type|Description|
|---|---|
|it.CollectionIterator|Iterate over a collection|
|it.SelectionIterator|Iterate over a selection|
|it.ObjectEntryIterator|Iterate over an object entries collection|
|it.ObjectKeyIterator|Iterate over an object keys collection|
|it.ObjectValueIterator|Iterate over an object values collection|

See some usage in [tests](https://github.com/mesopelagique/Iterable/blob/master/Project/Sources/Methods/test_iterator.4dm)

### Formula

|Type|Description|
|---|---|
|it.IterableIterator|Iterate on object which implements two formula: `length()->int` and `getValueAt(index)->value`|

## Go further

### 4D Tags

You can use pass an iterable to `PROCESS 4D TAGS`, the template will be easier to read

```4d
<!--#4DLOOP ($1.hasNext())-->
<!--#4DEVAL $value:=$1.next()-->
<!--#4DENDLOOP-->
```

### language features?
If a class have a function `iterator` which return an `Iterator` instance, we could imagine `For each` language keyword work with it, instead of keys browsing

---

[<img src="https://mesopelagique.github.io/quatred.png" alt="mesopelagique"/>](https://mesopelagique.github.io/)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[code-shield]: https://img.shields.io/static/v1?label=language&message=4d&color=blue
[code-top]: https://img.shields.io/github/languages/top/mesopelagique/JSONToCode.svg
[code-size]: https://img.shields.io/github/languages/code-size/mesopelagique/JSONToCode.svg
[code-url]: https://developer.4d.com/
[release-shield]: https://img.shields.io/github/v/release/mesopelagique/JSONToCode
[release-url]: https://github.com/mesopelagique/JSONToCode/releases/latest
[license-shield]: https://img.shields.io/github/license/mesopelagique/JSONToCode
[license-url]: LICENSE.md
[discord-shield]: https://img.shields.io/badge/chat-discord-7289DA?logo=discord&style=flat
[discord-url]: https://discord.gg/dVTqZHr
