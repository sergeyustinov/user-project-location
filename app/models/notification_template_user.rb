# Subscription functional
class NotificationTemplateUser < ApplicationRecord
  belongs_to :user
  belongs_to :notification_template
end
