
app.controller('ShowGroupController', ShowGroupController);

function ShowGroupController($state, $stateParams, Group, Auth) {

  var ctrl = this;

  ctrl.group = Group.get({ id: $stateParams.id });

  console.log(ctrl.group);

  Auth.currentUser()
    .then(function(user) {
      ctrl.user = user;
    });

  ctrl.addUser = function(user) {
    console.log(ctrl.hikerGroup);
    ctrl.group.users.push(user);
    ctrl.group.$update(function(result) {
      console.log(result);
    });
    $state.go($state.current, {}, {reload: true});
  };

  ctrl.isCreator = function(user, group) {
    if(user.id === group.user_id) {
      return true;
    }
  };

}
