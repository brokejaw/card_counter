window.Solano.Views.Index = Backbone.View.extend({
	template: JST['index'],
	
	initialize: function () {
		this.listenTo(this.collection, 'add remove sync', this.render);
	},
	
	render: function() {
		var content = this.template({
			weeks: this.collection
		});
		
		this.$el.html(content);
		return this;
	},
})