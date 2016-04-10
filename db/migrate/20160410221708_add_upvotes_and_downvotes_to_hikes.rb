class AddUpvotesAndDownvotesToHikes < ActiveRecord::Migration
  def change
    add_reference :hikes, :upvote, index: true, foreign_key: true
    add_reference :hikes, :downvote, index: true, foreign_key: true
  end
end
