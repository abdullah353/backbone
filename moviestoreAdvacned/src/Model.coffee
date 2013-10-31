@Movie = Backbone.Model.extend
	defaults:
    title: 'Avasd',
    gross: 0,
    rank: -1,
    year: 1900,
    studio: 'Stud'
	initialize: () ->
		console.log "A Model is initialized"
		console.log	@
		console.log JSON.stringify @
		console.log "==============="
