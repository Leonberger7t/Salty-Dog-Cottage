class CalendarController < ApplicationController

  protect_from_forgery with: :exception

  def show

    # get current date and display
    @current_date = Time.now()
    @year = @current_date.year
    @day = @current_date.day
    @dayofweek = Time.now.strftime("%A")
    @month = Time.now.strftime("%B")
  end
end
