class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[show edit update destroy]

  def my_recipes
    @favorite_recipes = current_user.favorite_recipes
    # @following_recipes = Recipe.where(user: current_user.follows).order(created_at: :desc)
    @my_recipes = current_user.recipes
  end

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @ingredients = Ingredient.all
    @categories = Category.all
    @preparation_step = PreparationStep.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    if @recipe.save
      redirect_to recipe_path(@recipe), notice: "Your recipe was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe), notice: "Your recipe was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path, notice: "Your recipe was successfully deleted."
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :difficulty, :cooking_time,
      :preparation_time, :number_of_servings, :note, category_ids: [],
      :preparation_steps_attributes => [:id, :instruction, :_destroy],
      :recipe_ingredients_attributes => [:id, :quantity_unit, :quantity_value, :ingredient_id, :_destroy])
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
