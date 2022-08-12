fishies = [
    'fish', 
    'fiiish', 
    'fiiiiish', 
    'fiiiish', 
    'fffish', 
    'ffiiiiisshh', 
    'fsh', 
    'fiiiissshhhhhh'
]

def sluggish(arr)
    max = arr[0]

    arr.each_with_index do |ele_1, idx_1|
        arr.each_with_index do |ele_2, idx_2|
            if idx_1 < arr.length - 1
                if idx_2 > idx_1 && ele_2.length > max.length
                    max = ele_2
                end
            elsif idx_2 > idx_1 && ele_1.length > max.length
                max = ele_1 
            end
        end
    end

    max
end 

def dominant(arr)
    return arr if arr.length < 2
    mid_i = arr.length / 2

    left = dominant(arr[0...mid_i])
    right = dominant(arr[mid_i..-1])

    ordered = merge(left, right)
    ordered.last
end

def merge(left, right)
    merged = []
    until left.empty? || right.empty?
        if left[0].length < right[0].length
            merged << left.shift
        else
            merged << right.shift
        end
    end
    merged + left + right
end

def clever(arr)
    longest = arr[0]

    arr.each do |fish|
        longest = fish if fish.length > longest.length
    end

    longest
end

tiles_array = [
    "up", 
    "right-up", 
    "right", 
    "right-down", 
    "down", 
    "left-down", 
    "left",  
    "left-up" 
]

def slow_dance(str, arr)
    arr.each_with_index do |ele, i|
        return i if ele == str
    end
end

def constant_dance!(str, arr)
    arr.index(str)
end
p sluggish(fishies)
#p dominant(fishies)
p clever(fishies)
p slow_dance("up", tiles_array) #=> 0
p slow_dance("right-down", tiles_array) #=> 3
p constant_dance!("up", tiles_array) #=> 0
p constant_dance!("right-down", tiles_array) #=> 3
