class SessionsController < ApplicationController

  def new
  end

  def create

    @user  = User.find_by(email: params[:email])

    if @user && User.find_by(password: params[:password])
      login @user
      flash[:success]  = "your login account..."
      redirect_to sports_url
    else
      render 'new'
    end

  end

  def destroy

    log_out

    redirect_to sports_url

  end
end
