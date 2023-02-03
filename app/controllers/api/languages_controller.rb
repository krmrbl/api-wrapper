module Api
  class LanguagesController < ApplicationController
    def index
      languages = Calendarific::Client.languages
      render json: languages
    end
  end
end
