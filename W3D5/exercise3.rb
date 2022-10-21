class Map
    def initialize
        @my_map = []
    end

    def set(key,value)
        my_map.push([key,value]) unless get(key)
    end

    def get(key)
        result = my_map.select { |pair| pair.first == key }
        result.empty? ? nil : result
    end

    def delete(key)
        my_map.each_with_index do |pair,idx|
            my_map.delete_at(idx) if pair.first == key
        end
    end

    def show
        my_map
    end

    private
    attr_reader :my_map
end