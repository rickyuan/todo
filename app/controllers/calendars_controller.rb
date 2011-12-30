class CalendarsController < ApplicationController
  def index
    @calendars = Calendar.all
  end
  
  def new
    @calendar = current_user.calendars.new
  end
  
  def create
    @calendar = current_user.calendars.build(params[:calendar])
	  if @calendar.save
	    redirect_to @calendar, :flash => { :success => "Done!" }
	  else
	    render 'new'
	end
  end
  
  def show
    @calendar = Calendar.find(params[:id])
	  @lists = @calendar.lists
  end
end
