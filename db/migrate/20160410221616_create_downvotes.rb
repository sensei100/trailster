class CreateDownvotes < ActiveRecord::Migration
  def change
    create_table :downvotes do |t|
      t.references :hike, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :vote

      t.timestamps null: false
    end
  end
end
