require_relative '../lib/scraper'
require 'colorize'

def welcome_message
  puts "Greetings Earthling ...entering scrape ..\n\n".red
  scraper.each do |mall|
    puts mall[:name]
  end
end

welcome_message
