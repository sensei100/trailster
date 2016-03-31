class CreateHikes < ActiveRecord::Migration
  def change
    create_table :hikes do |t|
      t.string :name
      t.text :description
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :difficulty
      t.float :distance
      t.integer :likes, default: 0
      t.integer :dislikes, default: 0

      t.timestamps null: false
    end
  end
end
