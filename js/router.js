// Filename: router.js
define([
  'jquery',
  'underscore',
  'backbone',
  'controllers/turismoController'
  
], function($, _, Backbone, turismoController){
  var AppRouter = Backbone.Router.extend({
    routes: {
      //Rotas do menu lateral
      
      'turismo/:option' : 'turismoController'
    }
  });

  var initialize = function(){
    var app_router = new AppRouter;
    Backbone.history.start();
  };

  AppRouter.prototype.turismoController =function(options){
      this.controller = new turismoController();
      this.controller.initialize();
  };

  return {
    initialize: initialize
  };
});
