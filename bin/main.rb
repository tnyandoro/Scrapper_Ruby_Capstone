require_relative '../lib/scraper'
require_relative '../lib/data_sequence.rb'
require 'colorize'

def welcome_message
  puts "Greetings Earthling ...entering scrape ..\n\n".red
  puts '*********************************************'.yellow
  puts '*********************************************'.yellow
  puts '..............Gauteng Malls...................'.red
end

def all_mall_info
  MallInfo.arrange_malls.each do |mall|
    sleep(1)
    system('clear')
    puts '*************************************'
    puts "mall_name: #{mall[:name]}".green
    puts '****************************'
    puts "mall_reviews: #{mall[:reviews]}"
    puts '****************************'
    puts "mall_info: #{mall[:info]}"
    puts '****************************'
    puts "mall_url: #{mall[:url]}"
    puts '***********end mall info**************'.red
    puts '........Press enter for next Mall.......'
    puts '........Press Q to Quit.................'
    input = gets.chomp
    break if input == 'q'
  end
end

def start_scraper
  welcome_message
  sleep(1)
  all_mall_info
end

start_scraper
