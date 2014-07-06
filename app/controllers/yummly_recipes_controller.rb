class YummlyRecipesController < ApplicationController

  def welcome
  end

  def index
    ids = Yummly.search(params[:search]).recipes.map(&:id)
    @yummly_recipes = []
    ids.each do |id|
      @yummly_recipes << Yummly.find(id)
    end
    @yummly_recipes
  end

  def show
    @yummly_recipe = Yummly.find(params[:id])
  end
end
