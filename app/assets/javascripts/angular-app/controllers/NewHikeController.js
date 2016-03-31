app.controller('NewHikeController', NewHikeController);

function NewHikeController(Hike, $location) {

  var ctrl = this;

  ctrl.hike = new Hike();

  ctrl.addHike = function() {
    ctrl.hike.$save(function(){
      $location.path('hikes');
    });
  }
}
