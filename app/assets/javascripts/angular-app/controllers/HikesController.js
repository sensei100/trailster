angular
  .module('trailster')
  .controller('HikesController', HikesController);

function HikesController(Hike, $state) {

  var ctrl = this;

  ctrl.hikes = Hike.query();

  ctrl.deleteHike = function(hike) {
    hike.$delete(function() {
      $state.go($state.current, {}, {reload: true});
    });
  };

  ctrl.likeHike = function(hike) {
    hike.likes++;
    hike.$update(hike);
    // $state.go($state.current, {}, {reload: true});
  };

  ctrl.dislikeHike = function(hike) {
    hike.dislikes++;
    hike.$update(hike);
  };

  ctrl.addComment = function(comment) {
    
  }
}
