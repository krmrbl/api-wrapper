module Calendarific
  class Errors
    def self.map(code)
      case code
      when 401
        return 'Unauthorized Request: Missing or incorrect API token in header.'
      when 404
        return 'Page not found.'
      when 422
        return 'Unprocessable Entity.'
      when 500
        return 'Internal Server Error.'
      when 429
        return 'Too many requests. API limits reached.'
      when 600
        return 'The API is offline for maintenance.'
      when 601
        return 'Missing or incorrect API token.'
      when 602
        return 'Invalid query parameters.'
      when 603
        return 'Authorized subscription level required.'
      else
        return 'Service Unavailable. Please try again later.'
      end
    end
  end
end
