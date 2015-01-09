class CreaturesController < ApplicationController
# move this to a new HOME CONTROLLER for home/indrex only according to assignment
  def home
  end

  def creatures
    @creature = Creature.all
  end

  def new
    @creature = Creature.new
    @creature.save
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

end