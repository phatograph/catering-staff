class ApplicationController < ActionController::Base
  include Pundit
  rescue_from Pundit::NotAuthorizedError, :with => :user_not_authorized

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private

  def user_not_authorized
    if current_user
      flash[:error] = "You are not authorized to perform this action."
      redirect_to root_path
    else
      flash[:error] = "Please sign in to the system."
      redirect_to new_user_session_path
    end
  end
end
