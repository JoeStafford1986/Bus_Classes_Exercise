class BusStop

  attr_reader(:name)

  def initialize(name)
    @name = name
    @queue = []
  end

  def count_passengers
    @queue.count()
  end

  def add_person_to_queue(passenger)
    @queue.push(passenger)
  end


end
