app.controller('NewHikeController', NewHikeController);

function NewHikeController(Hike, Auth, $location) {

  var ctrl = this;

  ctrl.hike = new Hike();

  Auth.currentUser()
    .then(function(user) {
      ctrl.user = user;
    });

  ctrl.addHike = function(user) {
    ctrl.hike.user_id = user.id;
    ctrl.hike.$save(function(){
      $location.path('hikes');
    });
  }
}
