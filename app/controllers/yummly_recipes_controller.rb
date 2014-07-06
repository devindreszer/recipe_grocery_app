class YummlyRecipesController < ApplicationController

  def welcome
  end

  def index
    @yummly_recipes = Yummly.search(params[:search]).recipes
  end

end
