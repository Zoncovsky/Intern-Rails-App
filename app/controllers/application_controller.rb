class ApplicationController < ActionController::Base
	include ApplicationHelper
	include Pundit
  protect_from_forgery with: :exception
  before_action :update_allowed_parameters, if: :devise_controller?

	rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password)}
  end

  private

    def user_not_authorized
      flash[:warning] = "You are not authorized to perform this action."
      redirect_to(request.referrer || root_path)
    end
end
