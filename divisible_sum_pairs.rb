n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

def pairs(a, k, num_pairs)
    if a.empty?
        return num_pairs
    else
        i = a.slice!(0)
        a.each do |j|
            num_pairs += 1 if (i + j) % k == 0
        end
        pairs(a, k, num_pairs)
    end
end

num_pairs = 0
print pairs(a, k, num_pairs)
