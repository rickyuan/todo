class CalendarsController < ApplicationController
  def index
    @calendars = Calendar.all
  end
  
  def new
    @calendar = Calendar.new
  end
  
  def create
    @calendar = Calendar.new(params[:calendar])
	  if @calendar.save
	    redirect_to @calendar, :flash => { :success => "Done!" }
	  else
	    render 'new'
	end
  end
  
  def show
    @calendar = Calendar.find(params[:id])
    @next_calendar = @calendar.next
	  @lists = @calendar.lists
  end
end
