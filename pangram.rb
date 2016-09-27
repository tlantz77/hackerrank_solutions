s = gets.strip


def is_pangram?(s)
    alpha = "abcdefghijklmnopqrstuvwxyz".split(//)
    alpha.each do |letter|
        if s.downcase.include?(letter) == false
            return "not pangram"
            break
        end
    end
    "pangram"
end

puts is_pangram?(s)
    
