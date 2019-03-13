class LocationsController < ApplicationController
  def index
    @locations = policy_scope(Location)
  end
end
