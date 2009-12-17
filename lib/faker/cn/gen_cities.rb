# File: gen_cities.rb -*- Encoding: utf-8 -*-
# Time-stamp: <luanma 12/17/2009 00:57:59>

File.open('city_data.rb', 'w') do |f|
  f.puts <<RUBY
# File: city_data.rb -*- Encoding: utf-8 -*-

module Faker
  module CN
    class Address
      CityData = 
RUBY

  File.foreach('city_data.json') do |line|
    f.print ' ' * 8, line.gsub(':', ' =>') unless /\/\// =~ line
  end  

  f.puts <<RUBY
      ProvinceData = CityData['city'].collect do |province, _| province end
      LongCityData = CityData['city'].collect do |province, cities|
        cities.keys.reject {|city| city == '_'}.map {|city| province + city}
      end.flatten!
      ShortCityData = CityData['city'].collect do |_, cities|
        cities.keys.reject {|city| city == '_'}
      end.flatten!
    end
  end
end
RUBY
end
