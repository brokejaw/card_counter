window.Solano.Views.Month = Backbone.View.extend({
	template: JST['month'],
	
	initialize: function () {
		this.listenTo(this.collection, 'add remove sync', this.render);
	},
	
	render: function() {
		var content = this.template({
			months: this.collection
		});
		
		this.$el.html(content);
		return this;
	},
})