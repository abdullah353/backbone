@MovieTable = Backbone.View.extend
	tagName: 'table',
	template: null,
	initialize: () ->
		console.log "A View is initialized"
		console.log	@
		console.log "###############"
		@template = _.template($('#movie-table').html())
	render: () ->
		@$el.html(@template(
			movies: @collection,
			movieTemplate: _.template($('#movie-row').html())))
		@
