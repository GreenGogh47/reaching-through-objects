require 'rspec'
require './lib/room'
require './lib/apartment'

RSpec.describe Apartment do
    it 'can be rented' do
      apartment = Apartment.new
    #   require "pry"; binding.pry

      expect(apartment.is_rented?).to eq(false)
      apartment.rent
      expect(apartment.is_rented?).to eq(true)
    end

    it 'can have up to 4 rooms' do
        apartment = Apartment.new
        bathroom = Room.new("bathroom")

        apartment.add_room(bathroom)
        apartment.add_room(Room.new("laundry"))
        apartment.add_room(Room.new("kitchen"))
        apartment.add_room(Room.new("bedroom"))

        expect(apartment.rooms).to eq(["bathroom","laundry","kitchen","bedroom"])

        # apartment.list_rooms_by_name_alphabetically
    end

    it 'can list the rooms alphebetically' do
        apartment = Apartment.new
        bathroom = Room.new("bathroom")

        apartment.add_room(bathroom)
        apartment.add_room(Room.new("laundry"))
        apartment.add_room(Room.new("kitchen"))
        apartment.add_room(Room.new("bedroom"))

        expect(apartment.list_rooms_by_name_alphabetically).to eq(["bathroom", "bedroom", "kitchen", "laundry"])
    end

end
