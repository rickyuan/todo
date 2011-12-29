class ListsController < ApplicationController
  def index
    @calendar = Calendar.find(params[:calendar_id])
    @lists = @calendar.lists
  end
  
  def new
    @calendar = Calendar.find(params[:calendar_id])
    @list = @calendar.lists.build
  end
  
  def create
    @calendar = Calendar.find(params[:calendar_id])
    @list = @calendar.lists.build(params[:list])
	if @list.save
	  redirect_to @calendar, :flash => { :success => "List done!" }
	else
	  render 'new'
	end
  end
  
  def show
    @calendar = Calendar.find(params[:calendar_id])
	@list = @calendar.lists.find(params[:id])
  end
end
