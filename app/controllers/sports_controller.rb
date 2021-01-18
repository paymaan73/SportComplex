
class SportsController < ApplicationController

  def index

    @sports = Sport.group(:name).count

  end

  def create

    unless current_user.sports.find_by(name: params[:name_sport])
      current_user.sports.create(name: params[:name_sport])
      redirect_to root_path
    else
      flash[:danger]  = "Somthing wrong data for already exist"
      redirect_to root_path
    end

  end

end
