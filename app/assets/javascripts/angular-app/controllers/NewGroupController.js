app.controller('NewGroupController', NewGroupController);

function NewGroupController(Group, Auth, $location) {

  var ctrl = this;

  ctrl.group = new Group();

  Auth.currentUser()
    .then(function(user) {
      ctrl.user = user;
    });

  ctrl.createGroup = function(user) {
    ctrl.group.user_id = user.id;
    console.log(user.username);
    ctrl.group.owner = user.username;
    ctrl.group.$save(function(){
      $location.path('groups');
    });
  }

}
