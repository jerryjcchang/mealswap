class MealsController < ApplicationController

  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def create
    @meal = Meal.find_or_create_by(params[:id])
    @meal.save
    redirect_to @meal
  end

  # def update
  #
  # end
  #
  # def destroy
  #
  # end

end
