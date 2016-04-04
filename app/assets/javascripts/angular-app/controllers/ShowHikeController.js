app.controller('ShowHikeController', ShowHikeController);

function ShowHikeController(Hike, Comment, $state, $stateParams, $http) {

  var ctrl = this;

  ctrl.comment = new Comment();

  ctrl.hike = Hike.get({ id: $stateParams.id });

  ctrl.addComment = function(comment, hike) {
    comment.hike_id = hike.id;
    comment.$save(function(result) {
      console.log(result);
    });
    ctrl.comment = new Comment();
    $state.go($state.current, {}, {reload: true});
  };

  ctrl.deleteComment = function(comment) {
    return $http.delete('http://localhost:3000/api/v1/hikes/' + comment.hike_id + '/comments/' + comment.id).success(function(data, response) {
      console.log('successfully delete');
      $state.go($state.current, {}, {reload: true});
    });
  };


}
