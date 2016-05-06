module VehicleControl

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

class Car
  include VehicleControl

  def initialize
    @speed = 0
    @direction = 'north'
    @fuel = 100
    @make = "Honda"
    @model = "CR-V"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include VehicleControl

  def initialize
    @speed = 0
    @direction = 'north'
    @type = "Mountain"
    @weight = 10
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike1 = Bike.new

p bike1.accelerate
