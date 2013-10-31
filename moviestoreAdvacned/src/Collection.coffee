@Movies = Backbone.Collection.extend
	model: Movie,
	comparator: (movie) ->
		movie.get('ranking')
	initialize: () ->
		console.log "A Collection is initialized"
		console.log	@
		console.log JSON.stringify @
		console.log "***************"