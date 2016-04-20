app.controller('TrailsterController', TrailsterController);

function TrailsterController($scope, Auth, $location) {

  // var ctrl = this;

  $scope.signedIn = Auth.isAuthenticated;

  Auth.currentUser()
    .then(function(user) {
      $scope.user = user;
    });

  ctrl.show = function() {
    return true;
  };

}
