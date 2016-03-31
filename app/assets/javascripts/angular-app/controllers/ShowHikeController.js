app.controller('ShowHikeController', ShowHikeController);

function ShowHikeController(Hike, $stateParams) {

  var ctrl = this;

  ctrl.hike = Hike.get({ id: $stateParams.id });

}
