class OrganismsController < ApplicationController
  def index
    @organisms = Organism.all
  end

  def new
    @organism = Organism.new
  end

  def create
    
      @organism = Organism.create(organism_params)
      walk_user = User.find(current_user)
      walk_user.add_to_nature_lover_level
      walk_user.save
      @organism.users << walk_user
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
