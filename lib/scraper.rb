require 'nokogiri'
require 'httparty'
require 'pry'
require 'byebug'

def scraper
   url = "https://www.infoisinfo.co.za/search/solar-systems/"
   unparsed_page = HTTParty.get(url)
   parsed_page = Nokogiri::HTML(unparsed_page)
   byebug
end

scraper
