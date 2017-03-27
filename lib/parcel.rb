require('pry')
class Parcel
    define_method(:initialize) do |weight, height, width,length|
        @weight = weight
        @height = height
        @width = width
        @length = length
    end
    define_method(:volume) do
       @height*@width*@length
    end
    define_method(:cost_to_ship) do
        cost_per_kilo = 100
        cost_per_kilo.*@weight
        end
    end
    
