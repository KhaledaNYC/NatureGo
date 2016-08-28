class WalkController < ApplicationController
  def index
  end

  def new
    @walk = Walk.new
  end

  def create
    @walk=Walk.create(organism_id:params[:organism_id], user_id:params[:user_id])
  end

  def show
    @walk = Walk.find(:id)
  end

  def delete
  end
end
