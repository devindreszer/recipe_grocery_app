class RecipesController < ApplicationController
  before_action :authenticate_user!

  def index
    @recipes = Recipe.all
  end

  def create
    @yummly_recipe = Yummly.find(params[:yummly_recipe_id])
    @recipe = Recipe.new
    @recipe.name = @yummly_recipe.name
    @recipe.image = @yummly_recipe.images.first.large_url
    @recipe.rating = @yummly_recipe.rating.to_i
    @recipe.servings = @yummly_recipe.number_of_servings.to_i
    @recipe.prep_time = @yummly_recipe.total_time_in_seconds.to_i
    @recipe.url = @yummly_recipe.attribution.url
    @recipe.is_custom = false
    @recipe.is_active = false

    if @recipe.save
      flash[:notice] = "#{@recipe.name} saved to cookbook!"
      redirect_to recipes_path
    end
  end

end
