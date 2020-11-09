require_relative './scraper'

class MallInfo
  include ScrapedInfo

  # Lets sort the Malls in discending order of the reviews

  def list_malls(array)
    array.sort! { |one, second| second[:reviews] <=> one[:reviews] }
  end


  private_instance_methods def request_malls
    ScrapedInfo.store_mall_info
  end

# Lets display Data in a sequence

  private_instance_methods def display_info
    sequenced_data = []
    list_malls(request_malls).each do |el|
      sequenced_data << "name: #{el[:name].green}\ninfo: #{el[:info].green}\npopularity: #{el[:reviews].yellow}\n\n"
    end

    sequenced_data
  end

  # Tally the number of malls
  def number_of_malls(array)
    array.count
  end
end
