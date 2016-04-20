gear

  name     hike_id


  fix group.owner


  'post' groups/1/users


  vote
    hike_id    user_id   direction
    1             1       Up
    1             2       Down
    1             1       1
    1           1

Elixir Pheonix Ecto


  hike.votes.upvotes

  Vote

      self.upvotes
      where(:value => "-1")



  validates :user_id, :uniqueness, :scope => :hike_id

  POST /hikes/1/votes
  DELETE /hikes/1/votes/1
