class Car
    attr_reader :brand, :model, :year, :speed

    def initialize(brand, model, year, speed = 0)
        @brand = brand
        @model = model
        @year = year
        @speed = speed
    end

    def accelerate(acceleration)
        @speed += acceleration
    end

    def brake(deceleration)
        @speed -= deceleration
        @speed = 0 if speed < 0
    end

    # Originally, this displayed the info, but I modified it to return a
    # string instead, so we can test it with rspec.
    def car_info
        "#{@year} #{@brand} #{@model} - Speed: #{@speed} mph"
    end
end
