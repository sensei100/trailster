app.factory('Comment', Comment);

function Comment($resource) {

  var Comment = $resource('http://localhost:3000/api/v1/hikes/:id/comments', {id: '@id'}, {
    update: { method: 'PUT' },
    delete: { method: 'DELETE' }
  });

  return Comment;

}
