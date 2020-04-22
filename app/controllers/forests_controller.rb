class ForestsController < ApplicationController

  def index
    @forests = Forest.all
  end

  def new
    @forest = Forest.new
  end

  def create
    # forestArr = [
    #   "Hoh Rainforest",
    #   "Yellowstone National Park",
    #   "Hickory Run State Park",
    #   "Lake Minnewaska",
    #   "Indiana Dunes",
    #   "The Black Forest",
    #   "Sherwood Forest",
    #   "Giant Redwoods Forest",
    #   "Tongass National Forest",
    #   "The Inland Rainforest",
    #   "The Great Bear Rainforest",
    #   "The Cloud Forests",
    #   "Laputa",
    #   "El Yunque",
    #   "Nouabalé-Ndoki National Park"
    # ]
    # @forest = Forest.create(visitor_id: Visitor.all.sample.id, animal_id: Animal.all.sample.id, forest: forestArr.sample)
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
