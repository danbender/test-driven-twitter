class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      #create session
    else
      flash.now[:error] = 'Invalid Email or Password'
      render 'new'
    end
  end

  def destroy
  end
end