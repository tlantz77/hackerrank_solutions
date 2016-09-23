n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

def calc_smallest(arr)
    smallest = arr[0]
    arr.each do |i|
        smallest = i if i < smallest
    end
    smallest
end

def cut_sticks(arr, smallest)
    arr.map! {|stick| stick - smallest }
    arr.delete(0)
end

until arr.empty?
    puts arr.length
    smallest = calc_smallest(arr)
    cut_sticks(arr, smallest)
end
