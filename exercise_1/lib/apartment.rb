class Apartment
    attr_reader :rented, :rooms

    def initialize()
        @rented = false
        @rooms = []
    end

    def rent
        @rented = true
    end

    def is_rented?
        @rented
    end

    def add_room(room)
        @rooms << room.name
    end

    def list_rooms_by_name_alphabetically
        @rooms.sort
    end
end


