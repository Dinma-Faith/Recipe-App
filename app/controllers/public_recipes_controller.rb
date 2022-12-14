class PublicRecipesController < ApplicationController
  def index
    @public_recipes = Recipe.where(public: true).includes(@user, @foods).order(created_at: :desc)
  end
end
