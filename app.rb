require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
    erb(:index)
end

get('/display') do
    @weight=params.fetch('weight').to_i
    @height=params.fetch('height').to_i
    @width=params.fetch('width').to_i
    @length=params.fetch('length').to_i
    @result=Parcel.new(@weight, @height, @width, @length).volume()
    @cost=Parcel.new(@weight, @height, @width, @length).cost_to_ship()
    erb(:index)
end
