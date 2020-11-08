require 'nokogiri'
require 'httparty'
require 'pry'
require 'byebug'

def scraper
   url = "https://www.infoisinfo.co.za/search/solar-systems/"
   unparsed_page = HTTParty.get(url)
   byebug
end

scraper
