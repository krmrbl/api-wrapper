module Calendarific
  class Client
    def self.holidays(country, year)
      response = Request.call('get', '/holidays', country, year)
    end
    
    def self.languages
      response = Request.call('get', '/languages', '', '')
    end

    def self.countries
      response = Request.call('get', '/countries', '', '')
    end
  end
end
