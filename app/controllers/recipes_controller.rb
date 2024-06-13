# require_relative '../models/recipe' # Add this line
require "open-uri"

class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[show edit update destroy favorite duplicate edit_note update_note]
  skip_before_action :authenticate_user!, only: [:my_recipes]
  before_action :auto_login_demo_user, only: %i[my_recipes]

  def my_recipes
      @favorite_recipes = current_user.favorited_by_type('Recipe')
      @my_recipes = current_user.recipes
      @user = current_user
      @favorited_users = current_user.favorited_by_type('User')
      @favorited_users_recipes = Recipe.where(user_id: @favorited_users.pluck(:id))

    if params[:query].present?
      cleaned_query = params[:query].strip
      sql_subquery = <<~SQL
        recipes.title ILIKE :query
        OR ingredients.name ILIKE :query
        OR categories.name ILIKE :query
      SQL

      @favorite_recipes = @favorite_recipes.select("distinct recipes.*").joins(:ingredients, :categories).where(sql_subquery, query: "%#{cleaned_query}%")
      @my_recipes = @my_recipes.select("distinct recipes.*").joins(:ingredients, :categories).where(sql_subquery, query: "%#{cleaned_query}%")
      @favorited_users_recipes = @favorited_users_recipes.select("distinct recipes.*").joins(:ingredients, :categories).where(sql_subquery, query: "%#{cleaned_query}%")
      @favorited_users_recipes = @favorited_users_recipes.where.not(id: @favorite_recipes.map(&:id))
    end
  end

  def index
    @recipes = Recipe.order(created_at: :desc)
    if params[:query].present?
      p cleaned_query = params[:query].strip
      sql_subquery = <<~SQL
        recipes.title ILIKE :query
        OR ingredients.name ILIKE :query
        OR categories.name ILIKE :query
      SQL
      @recipes = @recipes.select("distinct recipes.*").joins(:ingredients, :categories).where(sql_subquery, query: "%#{cleaned_query}%")
    end
  end

  def inspiration
    @popular_recipes = Recipe.joins(:favorited).group(:id).order('count(favorites.id) DESC').limit(5)
    popular_recipe_ids = @popular_recipes.pluck(:id)
    @preview_recipes = Recipe.where.not(id: popular_recipe_ids).where.not(user_id: current_user.id).order(created_at: :desc).limit(10)
  end

  def favorite
    if current_user.favorited?(@recipe)
      current_user.unfavorite(@recipe)
      redirect_to recipe_path(@recipe), notice: "Recette retirée des favoris" and return
    else
      current_user.favorite(@recipe)
      redirect_to recipe_path(@recipe), notice: "Recette ajoutée aux favoris" and return
    end
  end

  def scrap
    url = params[:scrap][:url]
    recipe_data = ScrapMarmiton.new(url).call
    @recipe = CreateRecipeFromScrapData.new(recipe_data, user: current_user).call
    @ingredients = Ingredient.all
    @categories = Category.all
    @preparation_step = PreparationStep.new
    redirect_to recipe_path(@recipe)
  end

  def show
    @user = @recipe.user
    @recipe_ingredients = @recipe.recipe_ingredients.includes(:ingredient)
  end

  def new
    @recipe = Recipe.new
    @ingredients = Ingredient.all
    @categories = Category.all
    @preparation_step = PreparationStep.new
    @step = params[:step]
  end

  def create
    if params[:recipe_url].present?
      @recipe_data = ScrapWithOpenai.new(params[:recipe_url]).call
      @recipe = CreateRecipeFromScrappingData.new(@recipe_data).call
    end
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    if @recipe.save
      redirect_to recipe_path(@recipe), notice: "Votre recette a été ajoutée."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit_note
  end

  def update_note
    if @recipe.update(note_params)
      respond_to do |format|
        format.html { redirect_to recipe_path(@recipe), notice: 'La note a été mise à jour.' }
        format.text { render partial: "recipes/note", locals: {recipe: @recipe}, formats: [:html] }
      end
    else
      render :edit_note
    end
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe), notice: "Votre recette a été modifiée."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def duplicate
    @new_recipe = @recipe.dup
    @new_recipe.user = current_user
    @new_recipe.save
    @recipe.recipe_ingredients.each do |recipe_ingredient|
      new_recipe_ingredient = recipe_ingredient.dup
      new_recipe_ingredient.recipe = @new_recipe
      # new_recipe_ingredient.recipe_id = @new_recipe.id
      new_recipe_ingredient.save
    end
    @recipe.preparation_steps.each do |preparation_step|
      new_preparation_step = preparation_step.dup
      new_preparation_step.recipe = @new_recipe
      new_preparation_step.save
    end
    @new_recipe.categories = @recipe.categories
    url = @recipe.photo.url
    file = URI.open(url)
    @new_recipe.photo.attach(io: file, filename: @recipe.photo.filename.to_s, content_type: "image/png")
    @new_recipe.save

    redirect_to recipe_path(@new_recipe), notice: "Votre recette a été dupliquée."
  end

  def destroy
    @recipe.destroy
    redirect_to my_recipes_path, notice: "Votre recette a été supprimée."
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :difficulty, :cooking_time,
      :preparation_time, :number_of_servings, :note, category_ids: [],
      :preparation_steps_attributes => [:id, :instruction, :_destroy],
      :recipe_ingredients_attributes => [:id, :quantity_unit, :quantity_value, :ingredient_id, :_destroy])
  end

  def note_params
    params.require(:recipe).permit(:note)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def auto_login_demo_user
    return if user_signed_in?

    user = User.find_by(email: 'pierre@gmail.com')
    sign_in(user) if user
  end
end
