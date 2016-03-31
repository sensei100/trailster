
app.controller('HikesController', HikesController);

function HikesController(Hike, Comment, $state) {

  var ctrl = this;

  ctrl.hikes = Hike.query();

  ctrl.comment = new Comment();

  ctrl.deleteHike = function(hike) {
    hike.$delete(function() {
      $state.go($state.current, {}, {reload: true});
    });
  };

  ctrl.likeHike = function(hike) {
    hike.likes++;
    hike.$update(hike);
  };

  ctrl.dislikeHike = function(hike) {
    hike.dislikes++;
    hike.$update(hike);
  };

  ctrl.addComment = function(comment, hike) {
    comment.hike_id = hike.id;
    comment.$save(function(result) {
      console.log(result);
    });
    ctrl.comment = new Comment();
  };

}
