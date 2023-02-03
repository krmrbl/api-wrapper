module Calendarific
  class Request
    BASE_URL = 'https://calendarific.com/api/v2'

    def self.call(http_method, endpoint, country, year)
      country = country.empty? ? '' : '&country=' + country
      year = year.empty? ? '' : '&year=' + year
      result = RestClient::Request.execute(
        method: http_method,
        url: "#{BASE_URL}#{endpoint}?api_key=#{self.api_key}#{country}#{year}",
        headers: {'Content-Type' => 'application/json'}
      )
      json = JSON.parse(result.body)
      if json['meta']['code'] >= 400
        { code: json['meta']['code'], status: json['meta']['code'].to_s + ' ' + Errors.map(json['meta']['code']).titleize.chop, data: json['meta']['error_detail'] }
      else
        { code: json['meta']['code'], status: 'Success', data: JSON.parse(result.body) }
      end
    rescue RestClient::ExceptionWithResponse => error
      { code: error.http_code, status: error.message, data: Errors.map(error.http_code) }
    end
    
    private
    
    def self.api_key
      Rails.application.credentials.calendarific.api_key
    end
  end
end
