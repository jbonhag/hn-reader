require 'nokogiri'
require 'rest-client'

module HNReader
  class NewsReader
    def initialize(headline_data)
      @headline_data = headline_data
    end


    def print_headlines
      @headline_data.each do |key, headline|
        if key < 10
          puts "  #{key}: #{headline[0]}"
        elsif key >= 10 && key < 100
          puts " #{key}: #{headline[0]}"
        else
          puts "#{key}: #{headline[0]}"
        end
      end
    end
  end
end