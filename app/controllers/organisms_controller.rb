class OrganismsController < ApplicationController
  def index
    @organisms = Organism.all
  end

  def new
    @organism = Organism.new
  end

  def create
    @organism = Organism.create(organism_params)
    @organism.users << User.find(1)
    redirect_to organism_path(@organism)
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
