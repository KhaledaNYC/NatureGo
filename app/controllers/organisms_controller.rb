class OrganismsController < ApplicationController
  def index
    @organisms = Organism.all
  end

  def new
    @organism = Organism.new
  end

  def create
    @organism = Organism.find_by(species: params[:species])
    if @organism == nil
      @organism = Organism.create(organism_params)
      @organism.users << User.find(current_user)
      redirect_to organism_path(@organism)
    else
      @organism.users << User.find(current_user)
      redirect_to organism_path(@organism)
    end
  end

  def show
    @organism = Organism.find(params[:id])
  end

  def delete
  end

  private
    def organism_params
      params.require(:organism).permit(:species,:group,:location)
    end
end
