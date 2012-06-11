// Filename: router.js
define([
  'jquery',
  'underscore',
  'backbone',
  'js/view/home/main.js'
  
], function($, _, Backbone,homeView){
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
    home = new homeView();
    home.render();
  }

  return {
    initialize: initialize
  };
});
