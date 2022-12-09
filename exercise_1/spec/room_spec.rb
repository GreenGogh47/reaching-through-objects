require 'rspec'
require './lib/room'

RSpec.describe Room do
    it 'has a name' do
      bathroom = Room.new('bathroom')
    #   require "pry"; binding.pry

      expect(bathroom.name).to eq('bathroom')
    end

    it 

end