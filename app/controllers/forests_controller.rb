class ForestsController < ApplicationController

  def index
    @forests = Forest.all
  end

  def new
    @forest = Forest.new
  end

  def create
    @forest = Forest.create(check_params)
    if @forest.save
      redirect_to forests_path
    else
      render "new"
    end
  end

private

  def check_params
    params.require(:forest).permit(:visitor_id, :animal_id, :forest)
  end

end
