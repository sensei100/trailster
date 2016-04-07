app.controller('EditGroupController', EditGroupController);

function EditGroupController(Group, Auth, $location, $stateParams) {

  var ctrl = this;

  ctrl.group = Group.get({ id: $stateParams.id });

  Auth.currentUser()
    .then(function(user) {
      ctrl.user = user;
    });

  ctrl.editGroup = function(user) {
    if(ctrl.group.user_id === user.id) {
      ctrl.group.$update(function() {
        $location.path('groups');
      });
    } else {
      alert("You are not the owner of this group");
    }
  };

}
