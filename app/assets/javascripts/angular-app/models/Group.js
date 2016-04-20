app.factory('Group', Group);

function Group($resource) {

  var Group = $resource('https://trailster.herokuapp.com/api/v1/groups/:id', {id: '@id'}, {
    update: { method: 'PUT' },
    delete: { method: 'DELETE' },
  });

  return Group;
}
