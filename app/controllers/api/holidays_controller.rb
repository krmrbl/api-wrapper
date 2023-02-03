module Api
  class HolidaysController < ApplicationController
    def index
      holidays = Calendarific::Client.holidays(params[:country], params[:year])
      render json: holidays
    end
  end
end
