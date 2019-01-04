class UsersController < ApplicationController

    before_action :find_user, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

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

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(
      :username,
      :password,
      :password_confirmation,
      :email,
      :first_name,
      :last_name,
      :experience,
      :company_id,
    )
  end

  def find_user
    @user = User.find(params[:id])
  end

end
