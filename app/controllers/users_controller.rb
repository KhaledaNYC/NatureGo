class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update, :destroy]
before_action :require_login, only: [:show,:destroy]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
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

  def edit
  end

  def update
    @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to user_path(@user)
      else
        render 'edit'
      end
    end

  def destroy
    if @user.id == session[:user_id]
    @user.destroy
    redirect_to new_user_path
    else
      redirect_to new_user_path
  end
  end

  private
    def user_params
      params.require(:user).permit(:name, :password, :location, :nature_lover_level, :username, :interest,:image)
    end
    def require_login
      redirect_to '/' unless session.include? :user_id
    end

    def set_user
        @user = User.find(params[:id])
    end

end
