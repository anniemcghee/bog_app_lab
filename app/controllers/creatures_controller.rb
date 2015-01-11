class CreaturesController < ApplicationController
# move this to a new HOME CONTROLLER for home/indrex only according to assignment

  def creatures
    @creature = Creature.all
  end

  def index
    @creature = Creature.all
  end


  def new
    @creature = Creature.new
  end

  def update
   @creature = Creature.find(params[:id])
    if @creature.update_attributes(params.require(:creature).permit(:name, :desc))
      redirect_to '/creatures'
    else
      render 'index'
    end
  end

  def destroy
    c = Creature.find(params[:id])
    c.destroy
    redirect_to '/'
  end

  def create
      @creature = Creature.new(params.require(:creature).permit(:name, :desc))
      if @creature.save
        redirect_to '/creatures'
      else
        render 'new'
    end
  end

  def show
    @creature = Creature.find(params[:id])
  end

  def edit
    @creature = Creature.find(params[:id])
  end

end