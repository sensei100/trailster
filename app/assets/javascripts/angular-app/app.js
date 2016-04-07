var app = angular.module('trailster', ['ui.router', 'ngResource', 'templates', 'Devise']);

app.config(function($stateProvider, $urlRouterProvider) {
  $stateProvider
    .state('trailster', {
      url: '/',
      templateUrl: 'trailster.html',
      controller: 'TrailsterController as ctrl'
    })
    .state('trailster.login', {
      url: 'login',
      templateUrl: 'auth/login.html',
      controller: 'AuthController',
      onEnter: ['$state', 'Auth', function($state, Auth) {
        Auth.currentUser().then(function() {
          $state.go('trailster')
        });
      }]
    })
    .state('trailster.register', {
      url: 'register',
      templateUrl: 'auth/register.html',
      controller: 'AuthController',
      onEnter: ['$state', 'Auth', function($state, Auth) {
        Auth.currentUser().then(function() {
          $state.go('trailster')
        });
      }]
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
    })
    .state('trailster.groups', {
      url: 'groups',
      templateUrl: 'groups/groups.html',
      controller: 'GroupsController as ctrl'
    })
    .state('trailster.group', {
      url: 'group/:id',
      templateUrl: 'groups/show.html',
      controller: 'ShowGroupController as ctrl'
    })
    .state('trailster.new-group', {
      url: 'new-group',
      templateUrl: 'groups/new.html',
      controller: 'NewGroupController as ctrl'
    })
    .state('trailster.edit-group', {
      url: 'edit-group/:id',
      templateUrl: 'groups/edit.html',
      controller: 'EditGroupController as ctrl'
    })
    .state('trailster.about', {
      url: 'about',
      templateUrl: 'about/about.html'
    });

  $urlRouterProvider.otherwise('/');

});
