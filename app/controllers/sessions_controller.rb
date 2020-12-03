class SessionsController < ApplicationController
  
  def create
    user = User.find_by(email: params[:email])
    if !user
      flash[:error] = 'Username and/or password is incorrect'
      redirect_to '/'
    elsif user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = 'You are now logged in'
      redirect_to '/dashboard'
    else
      flash[:error] = 'Username and/or password is incorrect'
      redirect_to '/'
    end
  end
end