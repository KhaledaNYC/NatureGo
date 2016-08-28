class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
      #binding.pry
    @user = User.new(user_params)

        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render 'new'
        end
  end

  def show
  end

  def delete
  end

  private
    def user_params
      params.require(:user).permit(:name, :password, :location, :nature_lover_level,:username )
    end

    def set_user
        @user = User.find(params[:id])
    end

end
