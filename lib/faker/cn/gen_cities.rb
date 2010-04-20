# File: gen_cities.rb -*- Encoding: utf-8 -*-
# Time-stamp: <luanma 12/16/2009 13:30:08>

require 'json'
require 'prettyprint'

city_data = JSON.parse(File.new('city_data.json').read)

File.open('city_data.rb', 'w') do |f|
  f.puts <<RUBY
# -*- encoding: utf-8 -*-

module Faker
  module CN
    class Address
      CityData = 
RUBY

  require 'pp'
  PP.pp city_data, f

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
