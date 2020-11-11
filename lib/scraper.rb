require 'httparty'
require 'open-uri'
require 'nokogiri'
require 'pry'
require 'byebug'

class Scraper
  def read_page()
    Nokogiri:: HTML(HTTParty.get('https://www.tripadvisor.co.za/Attractions-g312568-Activities-c26-t143-Gauteng.html/').body)
  end

  def collect_mall
    malls_collect = []
    malls = read_page.css('div.attraction_element')

    malls.each do |mall_list|
      mall = {
        name: mall_list.css('div.listing_title').text,
        reviews: mall_list.css('span.more').text,
        info: mall_list.css('span.extra-snippet').text,
        url: 'https://tripadvisor.co.za' + mall_list.css('a')[0].attributes['href'].value
      }
      malls_collect << mall
    end
    malls_collect
  end
end
