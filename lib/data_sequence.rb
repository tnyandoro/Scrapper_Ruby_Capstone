require_relative './scraper'

class MallInfo
  def self.arrangemalls
    scrap = Scraper.new
    scrap.collect_mall.sort { |a, b| a[:name] <=> b[:name] }
  end
end
