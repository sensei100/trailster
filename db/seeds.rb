# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

hikes = [
  {
    name: 'Broken Hill Trail',
    description: 'This is Torrey Pines Reserve’s longest trail through chaparral and sagebrush, and a scenic overlook with views of eroding sandstone.',
    street_address: '2600 North Torrey Pines Road',
    city: 'San Diego',
    state: 'CA',
    difficulty: 3,
    distance: 1.3
  },
  {
    name: 'Boucher Hill Trail',
    description: 'Beautiful mountain scenery featuring superlative views, old growth forest, ponds, streams, meadows, and wildlife.',
    street_address: '9952 State Park Rd.',
    city: 'Palomar',
    state: 'CA',
    difficulty: 7,
    distance: 8.8
  }
]

comments = [
  {
    content: 'Great hike',
    hike_id: 1
  },
  {
    content: 'One of the most beautiful hikes in San Diego county',
    hike_id: 1
  },
  {
    content: 'Mountains that take your breath away.',
    hike_id: 2
  }    
]

hikes.each do |hike|
  Hike.create(hike)
end

comments.each do |comment|
  Comment.create(comment)
end
