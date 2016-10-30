class CreateGardenLayouts < ActiveRecord::Migration[5.0]
  def change
    create_table :garden_layouts do |t|
      t.integer :app_id
      t.string :data
      t.boolean :compeleted

      t.timestamps
    end
  end
end
