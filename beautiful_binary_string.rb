n = gets.strip.to_i
B = gets.strip

steps = 0

for i in 1..B.length - 2
    if B[i-1].to_s + B[i].to_s + B[i+1].to_s == "010"
        B[i+1] = "1"
        steps += 1
    end
end

puts steps
