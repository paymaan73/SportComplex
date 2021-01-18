
class SportsController < ApplicationController

  def index

    @sports = Sport.group(:name).count

  end

  def create
  end
end
