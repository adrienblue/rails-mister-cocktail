class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
    #@dose = Dose.new
  end

  def create
    @cocktail = Cocktail.new(cocktails_params)
    @cocktail.save
    if @cocktail.save
      redirect_to cocktail_path(@cocktail.id)
    else
      flash.now[:error] = "Your book was not found"
      render :new
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end


  def destroy
  end

  def edit
  end

  private

 def cocktails_params
    params.require(:cocktail).permit(:name, :dose, :ingredient )
  end

end

