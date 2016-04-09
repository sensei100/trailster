app.controller('TrailsterController', TrailsterController);

function TrailsterController($scope, Auth, $location) {

  $scope.signedIn = Auth.isAuthenticated;

  var ctrl = this;

  ctrl.show = function() {
    return true;
  };

}
