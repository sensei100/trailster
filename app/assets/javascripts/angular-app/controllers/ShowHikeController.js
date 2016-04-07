app.controller('ShowHikeController', ShowHikeController);

function ShowHikeController(Hike, Comment, $state, $stateParams, $http, Auth) {

  var ctrl = this;

  Auth.currentUser()
    .then(function(user) {
      ctrl.user = user;
      console.log(ctrl.user);
    });

  ctrl.comment = new Comment();

  ctrl.hike = Hike.get({ id: $stateParams.id });

  ctrl.deleteHike = function(hike) {
    hike.$delete(function() {
      $state.go('trailster.hikes');
    });
  };

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

  ctrl.isHikeCreator = function(user, hike) {
    if(user.id === hike.user_id) {
      return true;
    }
  };


}
