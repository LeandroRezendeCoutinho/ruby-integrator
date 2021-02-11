require 'net/http'
require 'json'
require './data_mapper.rb'

class DataFetcher
  def fetch_data
    uri = URI('http://localhost:4567/data')
    response = Net::HTTP.get_response(uri)
    DataMapper.map(JSON.parse(response.body))
  end
end