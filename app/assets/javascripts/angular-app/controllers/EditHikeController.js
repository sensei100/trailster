app.controller('EditHikeController', EditHikeController);

function EditHikeController(Hike, $location, $stateParams) {

  var ctrl = this;

  ctrl.hike = Hike.get({ id: $stateParams.id });

  ctrl.editHike = function() {
    ctrl.hike.$update(function() {
      $location.path('hikes');
    })
  }
}
