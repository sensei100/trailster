app.controller('ShowGroupController', ShowGroupController);

function ShowGroupController($state, $stateParams, Group, $scope) {

  var ctrl = this;

  ctrl.group = Group.get({ id: $stateParams.id });

  console.log(ctrl.group.users);

  ctrl.addUser = function() {
    ctrl.group.users.push($scope.user);
    ctrl.group.$save(function(result) {
      console.log(result);
    });
    $state.go($state.current, {}, {reload: true});
  };

}
