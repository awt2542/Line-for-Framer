class module.exports extends Layer
	constructor: (options = {}) ->
		options.color ?= "red"
		options.thickness ?= 1
		options.height = 0
		options.originX = 0
		options.originY = 0
		super options
	
	drawLine: ->
		[p1, p2] = [@from, @_to]
		[xDist, yDist] = [p1.x - p2.x, p1.y - p2.y]
		length = Math.hypot(xDist,yDist)
		angle = Math.atan2(p2.y - p1.y, p2.x - p1.x) * 180 / Math.PI
		@width = length
		@rotation = angle
	
	@define "from",
		set: (val) -> 
			@point = val
			if @to
				@drawLine()
		get: -> @point

	@define "length",
		set: (val) -> @width = val
		get: -> @width
	
	@define "to",
		set: (val) -> 
			@_to = val
			@drawLine()
		get: -> @_to
	
	@define "thickness",
		set: (val) -> @shadowSpread = val
		get: -> @shadowSpread
	
	@define "color",
		set: (val) -> @shadowColor = val
		get: -> @shadowColor = val