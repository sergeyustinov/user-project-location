class NotificationTemplate < ApplicationRecord
  has_many :notification_template_users, dependent: :destroy
  has_many :users, through: :notification_template_users

  belongs_to :project

  enum role: ROLES.each_with_object(h = {}) { |r| h[r] = r }

  validates :name, :role, presence: true
end
