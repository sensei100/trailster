app.factory('Comment', Comment);

function Comment($resource) {

  var Comment = $resource('https://trailster.herokuapp.com/api/v1/hikes/:hike_id/comments', {hike_id: '@hike_id'}, {
    update: { method: 'PUT' },
    delete: { method: 'DELETE' }
  });

  return Comment;

}
