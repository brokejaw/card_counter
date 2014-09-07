window.Solano.Router = Backbone.Router.extend({
	initialize: function(options) {
		this.$rootEl = options.$root;
	},
	
	routes: {
		'': 'index',
	},
	
	index: function() {
		fourWeeks = new Solano.Collections.Weeks();
		
		var view = new Solano.Views.Index({
			collection: fourWeeks
		});
		fourWeeks.fetch();
		this.$rootEl.html(view.render().$el);
		
		allMonths = new Solano.Collections.Months();
		var view2 = new Solano.Views.Month({
			collection: allMonths
		});
		allMonths.fetch();
		this.$rootEl.append(view2.render().$el);
	},
});