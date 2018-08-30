require 'byebug'
def sluggish_octopuss(fish)

  sorted = false
  until sorted
    sorted = true

    (0...fish.length).each do |idx|
      (idx + 1...fish.length).each do |idx2|
        if fish[idx].length > fish[idx2].length
          fish[idx], fish[idx2] = fish[idx2], fish[idx]
          sorted == false
        end
      end
    end
  end

  fish.last

end

def dominant_octopus(fish)
  dom_oct_sort(fish).last
end

def dom_oct_sort(fish)
  return fish if fish.length <= 1
  mid = fish.length / 2
  left = dom_oct_sort(fish.take(mid))
  right = dom_oct_sort(fish.drop(mid))
  dom_oct_merge(left,right)
end

def dom_oct_merge(left, right)
  result = []
  until left.empty? || right.empty?
    if left.first.length < right.first.length
      result << left.shift
    else
      result << right.shift
    end
  end
  result + left + right
end

def clever_octopus(fish)
  result = fish[0]
  (0...fish.length).each do |idx|
    result = fish[idx] if fish[idx].length > result.length
  end
  result
end

def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |tile, idx|
    return idx if tile == direction
  end
end



if __FILE__ == $PROGRAM_NAME
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)
end
