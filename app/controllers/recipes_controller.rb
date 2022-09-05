class RecipesController < ApplicationController
    # skip_before_action :authorize, only: :create
    def index
        render json: Recipe.all
      end
    def create
        recipe = @current_user.recipes.create!(  params.permit(:title, :instructions, :minutes_to_complete))
        render json: recipe, status: :created
    end
end
