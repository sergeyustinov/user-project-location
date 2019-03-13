class CreateProjectUsers < ActiveRecord::Migration[5.1]
  def self.up
    execute <<-SQL
      CREATE TYPE project_user_roles AS ENUM ('#{ROLES.join("', '")}');
    SQL

    create_table :project_users do |t|
      t.column :role, :project_user_roles
      t.references :project
      t.references :user

      t.timestamps
    end

    add_index :project_users, :role
  end

  def self.down
    drop_table :project_users

    execute <<-SQL
      DROP TYPE project_user_roles;
    SQL
  end
end
