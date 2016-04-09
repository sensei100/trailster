
app.controller('HikesController', HikesController);

function HikesController(Hike, $state, $filter) {

  var ctrl = this;

  ctrl.hikes = Hike.query();

  ctrl.showHikes = false;

  ctrl.likeHike = function(hike) {
    hike.likes++;
    hike.$update(hike);
  };

  ctrl.dislikeHike = function(hike) {
    hike.dislikes++;
    hike.$update(hike);
  };

}
