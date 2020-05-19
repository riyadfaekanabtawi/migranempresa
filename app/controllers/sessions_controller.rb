class SessionsController < ApplicationController
  def create
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to root_url, notice: 'Logged in!'
  else
    redirect_to admin_url, notice: 'Logged in!'
  end
end



def destroy
  session[:user_id] = nil
  redirect_to root_url, notice: 'Logged out!'
end



end
