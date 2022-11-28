class My_Map

    def initialize

        @map = Array.new {Array.new(2)}
        @keys = Hash.new 

    end

    def set(key, val)

        if @keys.keys.include?(key) 
            @map[keys[key]][1] = val 
        else
            @map << [key, val]
            @keys[key] = val
        end


    end

    def get(key)

        @keys.keys.include?(key) ? @map[@map.index([key, @keys[key]])] : nil

    end

    def delete(key)

        @keys.keys.include?(key) ? @map.delete_at(@map.index([key, @keys[key]])) : "#{key} does not exist."

    end

    def show

        @map

    end

end

# m = My_Map.new

# m.set(4, 5)
# m.set(3, 4)
# m.set(1, 6)

# p '--------------'
# p m.get(1)
# p m.get(3)
# p m.get(4)
# p '--------------'
# p m.show
# p '--------------'

# p 'delete key 3'

# p m.delete(3)

# p '--------------'
# p m.show

# p '--------------'

# p 'delete non-existant key'

# p m.delete(34)



