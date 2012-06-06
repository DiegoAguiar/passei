define(
	'js/controllers/turismoController',
	[
		'jquery',
		'underscore',
		'backbone'
	],
	function($,_,Backbone){
		var turismoController = Backbone.Router.extend({
			initialize:function(){
				console.log('Iniciou');		
			}
		})
	}
)