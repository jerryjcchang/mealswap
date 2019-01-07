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
#code consistancy: this patern is different then creating a meal may want to
#decide on a patern to use
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
  end

  private
#code consistancy: If you're going to have this kind of formating for strong paramas
#you  want to do this in all of your strong params
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
    @user = User.find_by(username: params[:id])
  end

end
