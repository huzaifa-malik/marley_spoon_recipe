class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all.load
  end

  def show
    @recipe = Recipe.find(params[:id])

    if @recipe.blank?
      flash[:error] = "No Entries were found against this ID"
      return redirect_to root_url
    end

  end

end
