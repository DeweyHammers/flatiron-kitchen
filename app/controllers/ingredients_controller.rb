class IngredientsController < ApplicationController

  def show 
    @ingredient = Ingredient.find(params[:id])
  end

  def new 
    @ingredient = Ingredient.new
  end

  def create 
    @ingredient = Ingredient.new(ingredient_params)

    if @ingredient.save
      redirect_to @ingredient
    else
      render :new 
    end
  end

  def edit 
    @ingredient = Ingredient.find(params[:id])
  end 

  def update 
    @ingredient = Ingredient.find(params[:id])

    if @ingredient.update(ingredient_params)
      redirect_to @ingredient
    else
      render :edit
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
