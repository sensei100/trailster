class CreateUpvotes < ActiveRecord::Migration
  def change
    create_table :upvotes do |t|
      t.references :hike, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :vote

      t.timestamps null: false
    end
  end
end
