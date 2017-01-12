module VehicleBehavior

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Vehicle
    def initialize(input_options)
    @speed = 0
    @direction = 'north'
  end
end

class Car < Vehicle
  include VehicleBehavior

  def initialize(input_options)
    super
    @make = input_options[:make]
    @model = input_options[:model]
    @fuel = input_options[:fuel]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  include VehicleBehavior

  def initialize(input_options)
    super
    @weight = input_options[:weight]
    @speed = input_options[:speed]
    @type = input_options[:type]
  end

  def ring_bell
    puts "Ring ring!"
  end
end


car = Car.new(make: "bmw", model: "mini", fuel: 5)
p car
bike = Bike.new(weight: 27, speed: 0, type: "mountain")
p bike




