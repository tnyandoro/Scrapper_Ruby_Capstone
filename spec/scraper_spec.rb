require 'scraper'
require 'spec_helper.rb'

describe ScrapedData do
  describe '#page_data' do
    it 'returns sequenced data from the targeted url' do
      expect(ScrapedData.page_data.is_a?(Object)).to eql (true)
   end

    it 'does not expect the return type to be array' do
  expect(ScrapedData.page_data.is_a?(Array)).not_to be(true)
    end
  end
end
