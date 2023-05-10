class FavouritesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_recipe, only: [:create, :destroy]
  
    def index
        @favourites = Favourite.all
        @myfavourites = current_user.favourites
        @favourite_recipes = @myfavourites.map(&:recipe)
    end    
    
    def create
      favourite = current_user.favourites.build(recipe: @recipe)
  
      if favourite.save
        flash[:notice] = "Recipe added to favourites"
      else
        flash[:alert] = "Unable to add recipe to favourites"
      end
      redirect_to @recipe
    end
  
    def destroy
      favourite = current_user.favourites.find_by(recipe: @recipe)
  
      if favourite&.destroy
        flash[:notice] = "Recipe removed from favourites"
      else
        flash[:alert] = "Unable to remove recipe from favourites"
      end
      redirect_to @recipe
    end
  
    private
  
    def set_recipe
      @recipe = Recipe.find(params[:recipe_id])
    end
  end
  