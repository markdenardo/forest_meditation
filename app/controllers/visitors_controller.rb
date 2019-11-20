class VisitorsController < ApplicationController

  def index
    @visitors = Visitor.all
  end

  def new
    @visitor = Visitor.new
  end

  def create
    @visitor = Visitor.create(require_params)
    if @visitor.save
      redirect_to visitors_path(@visitor)
    else
      render "new"
    end
  end

  def show
    @visitor = Visitor.find(params[:id])
  end

  def edit
    @visitor = Visitor.find(params[:id])
  end

  def update
    @visitor = Visitor.find(params[:id])
    @visitor.update(require_params)
    redirect_to visitor_path(@visitor)
  end

  def destroy
    @visitor = Visitor.find(params[:id])
    @visitor.destroy
    redirect_to visitors_path
  end

private

def require_params
  params.require(:visitor).permit(:name)
end

end
