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
    difficulty: 2,
    distance: 1.3,
    user_id: 1
  },
  {
    name: 'Boucher Hill Trail',
    description: 'Beautiful mountain scenery featuring superlative views, old growth forest, ponds, streams, meadows, and wildlife.',
    street_address: '9952 State Park Rd.',
    city: 'Palomar',
    state: 'CA',
    difficulty: 2,
    distance: 8.8,
    user_id: 1
  },
  {
    name: 'Ho Chi Min',
    description: 'The trail is maintained by fellow hikers and surfers so if you aren’t in good shape I don’t recommend attempting. When the trail is wet it can get very slippery and because many parts of this trail follow the edge of a cliff so be careful people.',
    street_address: '9883 La Jolla Farms Rd',
    city: 'La Jolla',
    state: 'CA',
    difficulty: 3,
    distance: 2.4,
    user_id: 2
  },
  {
    name: 'William Heise County Park',
    description: 'William Heise County Park Trails is a 3 mile loop trail located near Julian, California',
    street_address: '4945 Heise Park',
    city: 'Julian',
    state: 'CA',
    difficulty: 2,
    distance: 3,
    user_id: 1
  },
  {
    name: 'Volcan Mountain',
    description: 'The reserve features high broken cliffs and deep ravines on headlands overlooking the ocean. Hikers can follow trails through stands of wind-sculpted pines. A picturesque, pueblo-style structure that served as a restaurant when it was built in 1923 houses the visitor center, featuring interpretive displays',
    street_address: '12600 N Torrey Pines Rd.',
    city: 'La Jolla',
    state: 'CA',
    difficulty: 3,
    distance: 5.6,
    user_id: 1
  },
  {
    name: 'Sunset Cliffs',
    description: 'This unique coastal environment features expansive ocean views, dramatic cliff formations and caves, a fascinating intertidal area, and native coastal sage scrub habitat which provides connectivity to the adjacent Point Loma Ecological Reserve.',
    street_address: '1227 Sunset Cliffs Blvd',
    city: 'San Diego',
    state: 'CA',
    difficulty: 1,
    distance: 3.7,
    user_id: 2
  },
  {
    name: 'Santa Margarita',
    description: 'Santa Margarita County Preserve is 221 acres and is part of the County of San Diego Multiple Species Conservation Program. The property was acquired in 1992 to preserve the resources and picturesque scenery of the Santa Margarita Valley, while providing additional public trails in the community of Fallbrook.',
    street_address: '37385 De Luz Rd. ',
    city: 'Fallbrook',
    state: 'CA',
    difficulty: 2,
    distance: 6.2,
    user_id: 1
  },
  {
    name: 'Cedar Creek Falls',
    description: 'Cedar Creek Falls Trail is a 5.2 mile out and back trail located near Ramona, CA that features a waterfall and is rated as moderate. The trail offers a number of activity options and is accessible from October until June. Dogs are also able to use this trail.',
    street_address: '15519 Thornbush Rd',
    city: 'Ramona',
    state: 'CA',
    difficulty: 2,
    distance: 5.2,
    user_id: 1
  },
  {
    name: 'Pacific Crest Trail',
    description: 'The Penny Pines trail is located just a quick hour-drive from downtown San Diego up in the beautiful Laguna Mountains and offers stunning viewpoints. This hike features 6,000 feet of elevation gain to Garnet Peak and a long stretch along the infamous Pacific Crest Trail(PCT) to Pioneer Mail',
    street_address: '12000 Sunrise Hwy',
    city: 'Pine Valley',
    state: 'CA',
    difficulty: 1,
    distance: 6.5,
    user_id: 2
  },
  {
    name: 'Coles Mountain',
    description: 'This heart pumping 3 mile vertical climb to the highest point within the city of San Diego. At 1,592 feet, the view from the top of Cowles Mountain makes the climb all the more worth it.',
    street_address: '7001 Golfcrest Dr',
    city: 'San Diego',
    state: 'CA',
    difficulty: 3,
    distance: 3,
    user_id: 1
  },
  {
    name: 'Mount Woodson',
    description: 'The trail narrows as you start to climb the mountain. The trail is well marked and kept in great condition. The trail gets steep at times',
    street_address: '14644 Lake Poway Rd',
    city: 'Poway',
    state: 'CA',
    difficulty: 3,
    distance: 8.7,
    user_id: 2
  },
  {
    name: 'El Capitan',
    description: 'El Capitan Preserve is an 14 mile out and back trail located near Lakeside, California and is only recommended for very experienced hikers. The trail is primarily used for trail running and is accessible year-round.',
    street_address: '13775 Blue Sky Ranch Rd.',
    city: 'Lakeside',
    state: 'CA',
    difficulty: 4,
    distance: 14,
    user_id: 1
  }
]

comments = [
  {
    content: 'Great hike',
    hike_id: 1,
    user_id: 1,
    username: 'Da_user'
  },
  {
    content: 'One of the most beautiful hikes in San Diego county',
    hike_id: 1,
    user_id: 1,
    username: 'Da_user'
  },
  {
    content: 'Mountains that take your breath away.',
    hike_id: 2,
    user_id: 1,
    username: 'Crazy_dude'
  }
]

groups = [
  {
    name: 'Mountain Hikers',
    description: 'Mountain hikers is a group of people that love to find a new challenge. We frequently hike @ Palomar Mountain. Please join our group, if you would love to hang out with active and adventures hikers.',
    user_id: 1,
    owner: 'Da_user'
  },
  {
    name: 'Beach Bums',
    description: 'The Beach Bums love hiking near the beach. You will find us hiking around Torrey Pines Reserver almost once a month.',
    user_id: 2,
    owner: 'Crazy_dude'
  }
]

users = [
  {
    username: 'Da_user',
    email: 'da_user@gmail.com',
    password: 'topsecret',
    password_confirmation: 'topsecret'
  },
  {
    username: 'Crazy_dude',
    email: 'crazy_dude@gmail.com',
    password: 'crazybigsecret',
    password_confirmation: 'crazybigsecret'
  }
]

users.each do |user|
  User.create!(user)
end

hikes.each do |hike|
  Hike.create(hike)
end

comments.each do |comment|
  Comment.create(comment)
end

groups.each do |group|
  Group.create(group)
end
