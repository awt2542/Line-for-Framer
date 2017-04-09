# Line for Framer

Create basic lines easily.

### Examples
Animated lines: [https://framer.cloud/iYWRP](https://framer.cloud/iYWRP)

Attached layers: [https://framer.cloud/QNPDl](https://framer.cloud/QNPDl)

Clock: [https://framer.cloud/JygiJ](https://framer.cloud/JygiJ)

![lines](https://d3uepj124s5rcx.cloudfront.net/items/3B1l0S2F2j313q1l0a3V/lines.png)

## Installation

1. Download the Line.coffee file
2. Create a framer project and drop Line.coffee inside the /modules folder
3. Add Line = require "Line" at the top of your document (case-sensitive).

More info about modules in Framer: [FramerJS Docs - Modules](http://framerjs.com/docs/#modules)

## Basic usage

```coffeescript
# Using coordinates
line = new Line
	from: {x: 0, y: 0}
	to: {x: 100, y: 100}
	thickness: 2
	color: "red"
		
# Using length
line = new Line
	length: 100
	thickness: 2
	color: "red"
	rotation: 45
```

## Reference

Line works just like a Layer, but with some additional properties:

| Property      |  Description |
| ------------- | ------------- |
| from    | the starting point eg. {x: 0, y: 0} |
| to    | the end point eg. {x: 0, y: 0}. rotation and length is calculated automatically  |
| length | set the length manually. can be used if .to isn't already specified  |
| color | the color of the line |
| thickness | the thickness of the line |


##Contact

Twitter: [@andreaswah](http://twitter.com/andreaswah)
