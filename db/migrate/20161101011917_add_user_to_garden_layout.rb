class AddUserToGardenLayout < ActiveRecord::Migration[5.0]
  def change
    add_reference :garden_layouts, :user, foreign_key: true
  end
end
