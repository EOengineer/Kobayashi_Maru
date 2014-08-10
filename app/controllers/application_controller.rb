class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def admin_required?
    redirect_to '/home' if current_user.role != 'member'
  end

  helper_method :admin_required?
end
