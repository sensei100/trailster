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
    distance: 1.3,
    user_id: 1
  },
  {
    name: 'Boucher Hill Trail',
    description: 'Beautiful mountain scenery featuring superlative views, old growth forest, ponds, streams, meadows, and wildlife.',
    street_address: '9952 State Park Rd.',
    city: 'Palomar',
    state: 'CA',
    difficulty: 7,
    distance: 8.8,
    user_id: 1
  }
]

comments = [
  {
    content: 'Great hike',
    hike_id: 1,
    user_id: 1
  },
  {
    content: 'One of the most beautiful hikes in San Diego county',
    hike_id: 1,
    user_id: 1
  },
  {
    content: 'Mountains that take your breath away.',
    hike_id: 2,
    user_id: 1
  }
]

groups = [
  {
    name: 'Mountain Hikers',
    description: 'Mountain hikers is a group of people that love to find a new challenge. We frequently hike @ Palomar Mountain. Please join our group, if you would love to hang out with active and adventures hikers.',
    user_id: 1
  },
  {
    name: 'Beach Bums',
    description: 'The Beach Bums love hiking near the beach. You will find us hiking around Torrey Pines Reserver almost once a month.',
    user_id: 1
  }
]

User.create! :username => 'Rukkusan', :email => 'luke@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'

hikes.each do |hike|
  Hike.create(hike)
end

comments.each do |comment|
  Comment.create(comment)
end

groups.each do |group|
  Group.create(group)
end
