class Api::V1::ApiController < ApplicationController
  def create_session
    resource = User.find_for_database_authentication(:email => params[:email])

    if resource.nil?
      render :json=> {:success => 0, :error => "No Such User"}, :status=>401
    else
      if resource.valid_password?(params[:password])
        sign_in(:user, resource)
        render :json=> {:success => 1}
      else
        render :json=> {:success => 0, :error => "Wrong Password"}, :status=>401
      end
    end
  end
end
