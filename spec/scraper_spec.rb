require_relative 'scraper'
require_relative'data_sequence'
require_relative 'spec_helper.rb'

describe 'scraper' do
  let(:test_array) { scraper }

  it 'returns list of malls' do
    expect(test_array.nil?).to eql(false)
  end
  it 'length should be bigger than 1' do
    expect(test_array.length > 1).to eql(true)
  end
end
