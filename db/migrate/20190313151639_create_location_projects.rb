class CreateLocationProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :location_projects do |t|
      t.references :project
      t.references :location

      t.timestamps
    end
  end
end
