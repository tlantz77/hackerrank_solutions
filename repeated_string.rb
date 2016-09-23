s = gets.strip
n = gets.strip.to_i


def a_count(s, n)
    initial_count = s.count("a") * (n / s.length)
    if n % s.length != 0
        index = (n % s.length) - 1
        return initial_count + s[0..index].count("a")
    else
        return initial_count
    end
end

print a_count(s, n)
