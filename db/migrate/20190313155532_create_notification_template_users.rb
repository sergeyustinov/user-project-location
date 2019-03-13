class CreateNotificationTemplateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :notification_template_users do |t|
      t.references :user, foreign_key: true
      t.references :notification_template, foreign_key: true

      t.timestamps
    end
  end
end
