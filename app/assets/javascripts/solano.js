window.Solano = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
		Solano.Router = new Solano.Router({
			$root: $('#content')
		});
		Backbone.history.start();
		console.log("backbone initiated");
  }
};