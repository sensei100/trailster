app.controller('GroupsController', GroupsController);

function GroupsController(Group, $state, $stateParams) {

  var ctrl = this;

  ctrl.groups = Group.query();

};
