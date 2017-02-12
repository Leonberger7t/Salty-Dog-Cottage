class EventsController < ApplicationController


  def index
   @message = "This is where we'll list all events."
   @events = event.all
  end
end

def destroy
  Request.delete(params[:email])
  redirect_to url_for(:controller => :request, :action => :index)
end
