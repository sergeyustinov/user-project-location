class LocationProject < ApplicationRecord
  belongs_to :location
  belongs_to :project
end
