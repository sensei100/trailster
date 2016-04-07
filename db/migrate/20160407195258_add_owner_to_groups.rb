class AddOwnerToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :owner, :string
  end
end
