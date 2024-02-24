require "car"

RSpec.describe Car do
    let(:ex_car) { Car.new("Tesla", "Model S", 2022) }

    describe "#accelerate" do
        it "Increases the speed by an acceleration amount" do
            ex_car.accelerate 50
            expect(ex_car.speed).to eq 50
        end
    end

    describe "#brake" do
        it "Decreases the speed by a deceleration amount" do
            ex_car.accelerate 50
            ex_car.brake 30
            expect(ex_car.speed).to eq 20
        end

        it "Keeps the speed from decreasing to a negative speed" do
            ex_car.accelerate 5
            ex_car.brake 10
            expect(ex_car.speed).to eq 0
        end
    end

    describe "#car_info" do
        it "Returns the complete details of the car" do
            ex_car.accelerate 75
            expect(ex_car.car_info).to eq "2022 Tesla Model S - Speed: 75 mph"
        end
    end

    describe "#brand" do
        it "Returns the complete details of the car" do
            expect(ex_car.brand).to eq "Tesla"
        end
    end

    describe "#model" do
        it "Returns the complete details of the car" do
            expect(ex_car.model).to eq "Model S"
        end
    end

    describe "#year" do
        it "Returns the complete details of the car" do
            expect(ex_car.year).to eq 2022
        end
    end

    describe "#speed" do
        it "Returns the complete details of the car" do
            ex_car.accelerate 100
            expect(ex_car.speed).to eq 100
        end
    end
end
