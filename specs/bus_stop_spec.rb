require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_stop")
require_relative("../person")

class BusStopTest < MiniTest::Test

  def setup
    @bus_stop = BusStop.new("Easter Road")
  end

  def test_get_name
    @bus_stop.name()
  end

  def test_count_passengers
    assert(0, @bus_stop.count_passengers)
  end

  def test_add_person_to_queue
    passenger = Person.new("Colin", 41)
    @bus_stop.add_person_to_queue(passenger)
    assert_equal(1, @bus_stop.count_passengers())
  end

end
