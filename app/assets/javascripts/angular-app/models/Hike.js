app.factory('Hike', Hike);

function Hike($resource) {

  var Hike = $resource('http://localhost:3000/api/v1/hikes/:id', {id: '@id'}, {
    update: { method: 'PUT' },
    delete: { method: 'DELETE' }
  });

  return Hike;
}
