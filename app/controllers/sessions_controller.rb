class SessionsController < ApplicationController
  def create
    session[:current_user_id] = @user.id
    redirect_to root_url
  end
end
