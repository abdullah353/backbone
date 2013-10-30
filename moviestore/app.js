var Movie = Backbone.Model.extend({
 
   defaults: {
      title: 'Avasd',
      gross: 0,
      rank: -1,
      year: 1900,
      studio: 'Stud'
   }
 
});
 
var Movies = Backbone.Collection.extend({
 
   model: Movie,
 
   comparator: function(movie) {
      return movie.get('rank');
   }
 
});
 
var MovieTable = Backbone.View.extend({
 
   tagName: 'table',
   template: null,
 
   initialize: function() {
 
      this.template = _.template( $('#movie-table').html() );
   },
 
   render: function() {
 
      this.$el.html(this.template({
            movies: this.collection,
            movieTemplate: _.template( $('#movie-row').html() )
         }) );
 
      return this;
   }
 
});