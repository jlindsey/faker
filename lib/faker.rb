$:.unshift File.dirname(__FILE__)

require 'faker/address'
require 'faker/company'
require 'faker/internet'
require 'faker/lorem'
require 'faker/name'
require 'faker/phone_number'
require 'faker/ssn'
require 'faker/version'

require 'faker/cn/city_data'
require 'faker/cn/address'
require 'faker/cn/company'
require 'faker/cn/lorem'
require 'faker/cn/name'

require 'extensions/array'
require 'extensions/object'

module Faker
  def self.numerify(number_string)
    number_string.gsub(/#/) { rand(10).to_s }
  end
  
  def self.letterify(letter_string)
    letter_string.gsub(/\?/) { ('a'..'z').to_a.rand }
  end
  
  def self.bothify(string)
    self.letterify(self.numerify(string))
  end
end
