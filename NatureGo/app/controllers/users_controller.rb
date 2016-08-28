class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
  end

  def show
    @user = User.find(user_params)
  end

  def delete
  end

  private
    def user_params
      params.require(:user).permit(:name,:password,:location,:nature_lover_level,:username )
    end
end