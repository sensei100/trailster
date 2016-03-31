var app = angular.module('trailster', ['ui.router', 'ngResource', 'templates']);

app.config(function($stateProvider, $urlRouterProvider) {
  $stateProvider
    .state('trailster', {
      url: '/',
      templateUrl: 'trailster.html',
      controller: 'TrailsterController as ctrl'
    })
    .state('trailster.hikes', {
      url: 'hikes',
      templateUrl: 'hikes/hikes.html',
      controller: 'HikesController as ctrl'
    })
    .state('trailster.hike', {
      url: 'hike/:id',
      templateUrl: 'hikes/show.html',
      controller: 'ShowHikeController as ctrl'
    })
    .state('trailster.new', {
      url: 'new',
      templateUrl: 'hikes/new.html',
      controller: 'NewHikeController as ctrl'
    })
    .state('trailster.edit', {
      url: 'edit/:id',
      templateUrl: 'hikes/edit.html',
      controller: 'EditHikeController as ctrl'
    });

  $urlRouterProvider.otherwise('/');

});
