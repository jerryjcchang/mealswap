class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def create
    username=params[:username]
    @user = User.find_by(username: username)

    if @user && user.authenticate(params[:password])
      cookies["current_user"] = username
      redirect_to meals_path
    else
      flash.notice = "No user found with that name and password combination."
      redirect_to login_path
    end
  end

    def destroy
      cookies.delete("current_user")
      redirect_to login_path
    end

end
