app.controller('NavbarController', NavbarController);

function NavbarController($scope, Auth) {

  $scope.signedIn = Auth.isAuthenticated;

  $scope.logout = Auth.logout;

  Auth.currentUser()
    .then(function(user) {
      $scope.user = user;
    });

  $scope.$on('devise:new-registration', function(user) {
    $scope.user = user;
  });

  $scope.$on('devise:login', function(user) {
    $scope.user = user;
  });

  $scope.$on('devise:logout', function(user) {
    $scope.user = {};
  });

};
