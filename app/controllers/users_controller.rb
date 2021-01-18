class UsersController < ApplicationController

  before_action :user_action, only: [:show, :edit, :update, :destroy]
  before_action :skip_login, only:[ :edit]

  def new

    @user  = User.new

  end

  def create

    @user  = User.new(user_params)

    if @user.save

      flash[:success]  = "Welcome to sport complex."
      redirect_to @user

    else

      render 'new'

    end

  end


  def show; end

  def edit; end

  def update

    @user  = User.find(params[:id])

    if @user.update(user_params)
      flash[:success]  = "was successfully."
      redirect_to @user
    else
      render 'edit'
    end

  end

  def destroy

    redirect_to root_path

  end


  private

  def user_params

    params.require(:user).permit(:name, :email, :age, :height, :weight, :password, :password_confirmation)

  end

  def user_action

    @user  = User.find(params[:id])

  end

  def skip_login

    unless log_in?

      flash[:danger]  = "you must login for activity"
      redirect_to login_url

    end
  end


end
