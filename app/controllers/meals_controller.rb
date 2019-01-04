class MealsController < ApplicationController

  before_action :find_meal, only: [:show, :edit, :update, :destroy]

  def index
    @meals = Meal.all
  end

  def show
    @booking = MealBooking.new
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.create(strong_params)
    if @meal.errors
     render :new
   else
     redirect_to meal_path(@meal)
   end
  end

  def edit
  end

  def update
    @meal.update(strong_params)
    redirect_to meal_path(@meal)
  end

  def destroy
    @meal.destroy
    redirect_to meals_path
  end

  private

  def strong_params
    params.require(:meal).permit(:name, :calories, :ingredients, :description, :prep_time, :portion, :chef_id, :image)
  end

  def find_meal
    @meal = Meal.find(params[:id])
  end

end
