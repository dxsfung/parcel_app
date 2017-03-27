require('rspec')
require('parcel')
describe(Parcel) do
    describe("#volume") do
        it("returns the product of the dimensions") do
            new_volume = Parcel.new(11,10, 10, 10)
            expect(new_volume.volume()).to(eq(1000))
        end
     end
    end
    describe("#cost_to_ship") do
        it("returns the shipping cost") do
            new_cost = Parcel.new(11,10, 20, 30)
            expect(new_cost.cost_to_ship()).to(eq(1100))
    end
end
