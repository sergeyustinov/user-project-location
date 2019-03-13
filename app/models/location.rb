class Location < ApplicationRecord
  has_many :location_projects, dependent: :destroy
  has_many :projects, through: :location_projects

  # depending from next tasks maybe better to have some easy way to determinate users, location_users assoc for ex.
  has_many :users, through: :projects

  validates :name, presence: true
end
