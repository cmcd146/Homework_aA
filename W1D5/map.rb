class Map
  
    def initialize
      @map = []
    end
    
    def set(key, value)
      if self.get(key) == nil
        @map << [key, value]
      else
        @map.each do |pair|
          pair[1] = value if pair[0] == key
        end
      end
    end
    
    def get(key)
      @map.each do |pair|
        return pair[1] if pair[0] == key
      end
      nil
    end
    
    def delete(key)
      @map.each do |pair|
        @map.delete(pair) if pair[0] == key
      end
    end
    
    def show
      puts @map
    end

end

