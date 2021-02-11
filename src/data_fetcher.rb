require 'net/http'
require 'json'
require_relative 'data_mapper'

class DataFetcher
  def fetch_data
    uri = URI('http://localhost:4567/data')
    response = Net::HTTP.get_response(uri)
    DataMapper.map(JSON.parse(response.body))
  end
end