module Api
  class CountriesController < ApplicationController
    def index
      countries = Calendarific::Client.countries
      render json: countries
    end
  end
end
