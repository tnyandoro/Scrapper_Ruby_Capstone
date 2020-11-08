require 'nokogiri'
require 'httparty'
require 'pry'
require 'byebug'

def scraper
  url = 'https://themanifest.com/za/software-development/companies/'
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)
  company_collect = []
  companies = parsed_page.css('article.company-list-items') # 29 companies
  companies.each do |company_list|
    company = {
      name: company_list.css('span').text,
      service: company_list.css('field--name-field-pp-company-description-tm').text,
      project: company_list.css('field--label').text,
      url: company_list.css('a')[0].attributes['href'].value

    }
    company_collect << company
  end
  byebug
end

scraper
