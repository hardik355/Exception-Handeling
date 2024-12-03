class Api::V1::CheckWhetherController < ApplicationController
  require 'faraday'
  # APIKEY = '4dbb5d3ac479fb54665935fb788554f6'
  APIKEY = '654654dasdasdafad5445sasx' #This is invalid API key/
  ENDPOINT = "https://api.openweathermap.org/data/2.5/weather?q=London&appid=#{APIKEY}"

  
  def today_whether
    # Make the request to the weather API
    response = Faraday.get(ENDPOINT)

    # Check for a successful response (HTTP status 200)
    if response.status == 200
      render json: { data: response.body }
    elsif response.status == 401
      render json: { error: 'Invalid API key. Please check your key and try again.' }, status: :unauthorized
    elsif response.status == 404
      render json: { error: 'City not found. Please check the city name.' }, status: :not_found
    else
      render json: { error: "API error: #{response.status} - #{response.body}" }, status: :internal_server_error
    end

    rescue Faraday::ConnectionFailed => e
      render json: { error: "Connection failed: #{e.message}" }, status: :service_unavailable
    rescue Faraday::TimeoutError => e
      render json: { error: "Request timed out: #{e.message}" }, status: :request_timeout
    rescue StandardError => e
      render json: { error: "An unexpected error occurred: #{e.message}" }, status: :internal_server_error
  end
end



# 400	Faraday::BadRequestError
# 401	Faraday::UnauthorizedError
# 403	Faraday::ForbiddenError
# 404	Faraday::ResourceNotFound
# 407	Faraday::ProxyAuthError
# 408	Faraday::RequestTimeoutError
# 409	Faraday::ConflictError
# 422	Faraday::UnprocessableEntityError
# 429	Faraday::TooManyRequestsError
# 4xx (any other)	Faraday::ClientError