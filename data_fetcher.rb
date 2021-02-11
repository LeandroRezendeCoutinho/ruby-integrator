require 'net/http'
require 'json'

class DataFetcher
  def fetch_data
    uri = URI('http://localhost:4567/data')
    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body)
  end
end