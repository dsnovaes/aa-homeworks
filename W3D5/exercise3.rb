class Map
    def initialize
        @my_map = []
    end

    def set(key,value)
        my_map.push([key,value]) unless get(key)
        self
    end

    def get(key)
        result = my_map.select { |pair| pair.first == key }
        result.empty? ? nil : result
    end

    def delete(key)
        my_map.each_with_index do |pair,idx|
            my_map.delete_at(idx) if pair.first == key
        end
        self
    end

    def show
        my_map.dup
    end


    private
    attr_reader :my_map
end