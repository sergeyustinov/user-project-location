class ProjectUser < ApplicationRecord
  belongs_to :project
  belongs_to :user

  enum role: ROLES.each_with_object(h = {}) { |r| h[r] = r }

  validates :role, presence: true

  before_validation :set_defaults

  protected

  def set_defaults
    self.role ||= ROLES.first
  end
end
