require_relative 'data_fetcher'
require_relative 'data_processor'
require 'pry'

10.times do |n|
  fetcher = DataFetcher.new
  processor = DataProcessor.new
  data = fetcher.fetch_data
  processor.process(data)
  puts "Integration #{n}"
end