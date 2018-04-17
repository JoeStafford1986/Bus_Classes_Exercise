class Bus

  attr_reader(:route_number, :destination)

 def initialize(route_number, destination)
   @route_number = route_number
   @destination = destination
   @passengers = []
 end

 def drive()
   return "Brum Brum!"
 end

 def passenger_count()
   @passengers.size()
 end

 def pickup_passenger(passenger)
   @passengers.push(passenger)
 end

 def dropoff_passenger(passenger)
   @passengers.delete(passenger)
 end

 def terminates
   @passengers.clear()
 end

end
