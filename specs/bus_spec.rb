require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")
require_relative("../person")

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
    @person1 = Person.new("Joe", 18)
    @person2 = Person.new("Rachel", 87)
  end

  def test_has_route_number
    assert_equal(22, @bus.route_number())
  end

  def test_has_destination
    assert_equal("Ocean Terminal", @bus.destination())
  end

  def test_drive
    assert_equal("Brum Brum!", @bus.drive())
  end

  def test_passenger_count
    assert_equal(0, @bus.passenger_count())
  end

  def test_pickup_passenger
    @bus.pickup_passenger(@person1)
    assert_equal(1, @bus.passenger_count())
  end

  def test_dropoff_passenger
    @bus.pickup_passenger(@person1)
    @bus.dropoff_passenger(@person1)
    assert_equal(0, @bus.passenger_count())
  end

  def test_terminates
    @bus.pickup_passenger(@person1)
    @bus.pickup_passenger(@person2)
    @bus.terminates()
    assert_equal(0, @bus.passenger_count())
  end







end
