require_relative './scraper'

class MallInfo
  

  def self.arrangemalls
    scraper.sort {|a, b| a[:name] <=> b[:name]}
  end
end


