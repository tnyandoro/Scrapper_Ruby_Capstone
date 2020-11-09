require_relative '../lib/scraper'
require 'colorize'

def welcome_message
  puts "Greetings Earthling ...entering scrape ..\n\n".red
  scraper.each do |mall|
    puts mall[:name]
  end
end

def all_mall_info
  mall_list = MallInfo.new
  puts "displaying[#{mall_list.number_of_malls(mall_list.request_malls).to_s.green}]Mall list from Travl Advisor."
  puts "Listing all Malls from the one with most reviews to one with the least: \n\n".yellow
  mall_list.display_info.each do |malls|
    sleep(1)
    puts '****************************'
    puts malls
    sleep(1)
  end
end

def start_scraper
  welcome_message
  sleep(1)
  all_mall_info
end

start_scraper
