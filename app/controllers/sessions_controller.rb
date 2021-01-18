class SessionsController < ApplicationController

  def new
  end

  def create

    @user  = User.find_by(email: params[:session][:email])

    if @user && @user.authenticate(params[:session][:password])
      login @user # method helper of sessions helper
      flash[:success]  = "your login account..."
      redirect_to root_path
    else
      render 'new'
    end

  end

  def destroy

    log_out #method helper of sessions helper

    redirect_to sports_url

  end

end
