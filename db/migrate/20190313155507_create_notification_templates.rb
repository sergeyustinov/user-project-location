class CreateNotificationTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :notification_templates do |t|
      t.string :role
      t.string :name
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
