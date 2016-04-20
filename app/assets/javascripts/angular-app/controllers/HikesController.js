
app.controller('HikesController', function HikesController(Hike, $filter, Comment, $state, $stateParams, $http, Auth, $location) {

  var ctrl = this;

  Auth.currentUser()
    .then(function(user) {
      ctrl.user = user;
    });

  ctrl.hikes = Hike.query();

  ctrl.newHike = new Hike();

  ctrl.comment = new Comment();

  ctrl.hike = Hike.get({ id: $stateParams.id });

  ctrl.addHike = function(user) {
    ctrl.newHike.user_id = user.id;
    ctrl.newHike.$save(function(){
      $location.path('hikes');
    });
  }

  ctrl.showHikes = false;

  ctrl.likeHike = function(hike) {
    hike.likes++;
    hike.$update(hike);
  };

  ctrl.dislikeHike = function(hike) {
    hike.dislikes++;
    hike.$update(hike);
  };

  ctrl.editHike = function() {
    ctrl.hike.$update(function() {
      $location.path('hikes');
    });
  }

  ctrl.deleteHike = function(hike) {
    hike.$delete(function() {
      $state.go('trailster.hikes');
    });
  };

  ctrl.addComment = function(comment, hike, user) {
    comment.hike_id = hike.id;
    comment.user_id = user.id;
    comment.username = user.username;
    comment.$save(function(result) {
      console.log(result);
    });
    ctrl.comment = new Comment();
    $state.go($state.current, {}, {reload: true});
  };

  ctrl.deleteComment = function(comment, user) {
    console.log('user id is: ' + user.id + ', and comment userid is: ' + comment.user_id);
    console.log(comment.us)
    if(comment.user_id === user.id) {
      return $http.delete('/api/v1/hikes/' + comment.hike_id + '/comments/' + comment.id).success(function(data, response) {
        console.log('successfully delete');
        $state.go($state.current, {}, {reload: true});
      });
    } else {
      alert("You cannot delete another user's comment");
    }

  };

  ctrl.isHikeCreator = function(user, hike) {
    if(user.id === hike.user_id) {
      return true;
    }
  };


});
