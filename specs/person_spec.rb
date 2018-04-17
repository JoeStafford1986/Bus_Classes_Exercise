require("minitest/autorun")
require("minitest/rg")
require_relative("../person")

class PersonTest < MiniTest::Test

  def setup
    @person = Person.new("Joe", 18)
  end

  def test_has_name
    assert_equal("Joe", @person.name())
  end

  def test_has_age
    assert_equal(18, @person.age())
  end




end
