class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :project_users, dependent: :destroy
  has_many :projects, through: :project_users

  has_many :notification_template_users, dependent: :destroy
  has_many :notification_templates, through: :notification_template_users

  # depending from next tasks maybe better to have some easy way to determinate locations, location_users assoc for ex.
  has_many :locations, through: :projects
end
