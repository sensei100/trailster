app.factory('Group', Group);

function Group($resource) {

  var Group = $resource('http://localhost:3000/api/v1/groups/:id', {id: '@id'}, {
    update: { method: 'PUT' },
    delete: { method: 'DELETE' },
  });

  return Group;
}
