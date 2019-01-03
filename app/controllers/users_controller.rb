class UsersController < ApplicationController
  def new
    cookies.delete("current_user")
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      cookies["current_user"] = @user.username
      redirect_to meals_path
    else
      render :new
    end
  end

  def show
    @user = User.find_by(username: cookies[:current_user])
  end

  private

  def user_params
    params.require(:user).permit(
      :username,
      :password,
      :password_confirmation,
      :first_name,
      :last_name,
      :experience,
      :company_id,
    )
  end

end
