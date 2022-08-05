class Stack
    def initialize
        @stack = []
    end

    def push(el)
        @stack.push(el)
    end

    def pop 
        @stack.pop
    end

    def peek
        @stack.last
    end
end

class Queue
    def initialize
        @stack = []
    end

    def enqueue(el)
        @stack.unshift(el)
    end

    def dequeue
        @stack.pop
    end

    def peek
        @stack.last
    end
end

class Map 
    def initialize
        @map = []
    end

    def set(key, value)
        if get(key)
            k = get(key)
            i = @map.index(k)
            @map[i] = [key, value]
        else
            @map.push[key, value]
        end
    end

    def get(key)
        @map.each_with_index do |pair, i|
            if pair[0] == key
                return @map[i]
            end
        end
        return nil 
    end

    def delete(key)
        @map.each_with_index do |pair, i|
            if pair[0] == key
                @map.delete_at(i)
            end
        end
    end

    def show
        print @map
    end
end

