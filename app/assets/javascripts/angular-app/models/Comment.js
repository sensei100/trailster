app.factory('Comment', Comment);

function Comment($resource) {

  var Comment = $resource('http://localhost:3000/api/v1/hikes/:hike_id/comments', {hike_id: '@hike_id'}, {
    update: { method: 'PUT' },
    delete: { method: 'DELETE' }
  });

  return Comment;

}
