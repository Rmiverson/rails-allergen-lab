class RecipesController < ApplicationController
   def index
      @recipes = Recipe.all
   end

   def new
      @recipe = Recipe.new
      @users = User.all
      # byebug
   end

   def create
      @recipe = Recipe.create(recipe_params)
      redirect_to recipe_path(@recipe)
   end

   def show
      @recipe = Recipe.find(params[:id])
   end

   private

   def recipe_params
      params.require(:recipe).permit(:recipe_name, :user_id, :content)
   end
end
