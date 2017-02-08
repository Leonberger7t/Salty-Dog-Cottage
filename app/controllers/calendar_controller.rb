class CalendarController < ApplicationController

  protect_from_forgery with: :exception

  def show


    @current_date = Time.now()


    # puts "HELLO CURRENT DATE:", @current_date
    @year = @current_date.year
    @day = @current_date.day
    @dayofweek = Time.now.strftime("%A")
    @month = Time.now.strftime("%B")
    # puts "Day", @day
    # puts "Month", @month
    # puts "Dayofweek", @dayofweek
  end
end
