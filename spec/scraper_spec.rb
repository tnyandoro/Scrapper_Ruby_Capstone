require_relative 'scraper'
require_relative 'data_sequence'
require_relative 'spec_helper.rb'

describe Scraper do
  subject(:scraper) { Scraper.new }

  describe 'read_page' do
    it 'responses to string method to_s' do
      expect(scraper.read_page.respond_to?(:to_s)).to eql(true)
    end
    it 'returns a type of an Object' do
      expect(scraper.read_page.is_a?(Object)).to eql(true)
    end
  end

  describe 'collect_mall' do

    it 'returns list of malls as array' do
      expect(scraper.collect_mall.class).to eql(Array)
    end
    it 'length should be bigger than 1' do
      expect(scraper.collect_mall.length > 1).to eql(true)
    end
  end
end
