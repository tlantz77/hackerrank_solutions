n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end

def diag_1(arr)
    sum = 0
    (0...arr.length).each do |i|
        sum += arr[i][i]
    end
    sum
end

def diag_2(arr)
    sum = 0
    (0...arr.length).each do |i|
        sum += arr[i].reverse[i]
    end
    sum
end

print (diag_1(a) - diag_2(a)).abs
