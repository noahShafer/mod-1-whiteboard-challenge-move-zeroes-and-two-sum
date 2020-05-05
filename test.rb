arr = [1,3, 12]

def move_zeroes(array)
    indexes = []
    array.each_with_index {|k,i| indexes << i if k == 0}
    indexes.reverse.each {|v| 
        array << array.slice!(v)
    }
    array
end

# p move_zeroes(arr)

def two_sum(array, target)
    res = {}
    count = 0
    array.each_with_index {|v, k| 
        count += 1
        if k != array.count - 1
            if v + array[k+1] == target
                res = {"index1"=> k, "index2" => k + 1}
                break
            elsif v + array[k+1] > target
                break
            end
        end
    }
    p count
    res
end

p two_sum([2, 7, 11, 15], 9)