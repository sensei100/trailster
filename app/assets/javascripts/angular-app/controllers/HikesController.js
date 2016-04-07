
app.controller('HikesController', HikesController);

function HikesController(Hike, $state) {

  var ctrl = this;

  ctrl.hikes = Hike.query();

  ctrl.likeHike = function(hike) {
    hike.likes++;
    hike.$update(hike);
  };

  ctrl.dislikeHike = function(hike) {
    hike.dislikes++;
    hike.$update(hike);
  };

}
