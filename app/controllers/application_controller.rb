class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  # @todo determinate it for example by subdomain
  def current_location
    Location.first
  end

  # @todo determinate it for example by path
  def current_project
    Project.first
  end

  protected

  def configure_permitted_parameters
    # @todo
    # devise_parameter_sanitizer.permit(:invite, keys: %i[email name role location_id project_id])
  end

  def pundit_user
    OpenStruct.new(
      user: current_user,
      location: current_location,
      project: current_project
    )
  end
end
