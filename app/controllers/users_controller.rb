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
    else
      render :new
    end
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
