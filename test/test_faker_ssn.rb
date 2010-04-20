require File.dirname(__FILE__) + '/test_helper.rb'

class TestFakerSSN < Test::Unit::TestCase
  def setup
    @tester = Faker::SSN
  end

  def test_number
    50.times do
      num = @tester.number
      assert num.match(/[\d]{3}-[\d]{2}-[\d]{4}/)

      parts = num.split('-')
      assert_not_equal '000', parts[0]
      assert_not_equal '666', parts[0]
      assert !(('734'..'749').to_a.include?(parts[0]))
      assert (parts[0].to_i < 772)
      assert_not_equal '00', parts[1]
      assert_not_equal '0000', parts[2]
    end
  end
end

