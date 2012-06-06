// Filename: router.js
define([
  'jquery',
  'underscore',
  'backbone'
  
], function($, _, Backbone){
  var AppRouter = Backbone.Router.extend({
    routes: {
      //Rotas do menu lateral
      '' : 'homeController',
      'turismo/:option' : 'turismoController'
    }
  });

  var initialize = function(){
    var app_router = new AppRouter;
    Backbone.history.start();
  };

  AppRouter.prototype.turismoController =function(options){
      
  };

  AppRouter.prototype.homeController = function(){
    console.log('home');
  }

  return {
    initialize: initialize
  };
});
