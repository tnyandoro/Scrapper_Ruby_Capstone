require 'nokogiri'
require 'httparty'
require 'pry'
require 'byebug'

def scraper
  url = 'https://www.tripadvisor.co.za/Attractions-g312568-Activities-c26-t143-Gauteng.html/'
  unparsed_page = HTTParty.get(url).body
  parsed_page = Nokogiri::HTML(unparsed_page)
  malls_collect = []
  malls = parsed_page.css('div.attraction_element') # 30 malls
  malls.each do |mall_list|
    mall = {
      name: mall_list.css('div.listing_title').text,
      reviews: mall_list.css('span.more').text,
      info: mall_list.css('span.extra-snippet').text,
      url: 'https://tripadvisor.co.za' + mall_list.css('a')[0].attributes['href'].value

    }
    malls_collect << mall
  end
  #  byebug
  malls_collect
end


