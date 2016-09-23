n = gets.strip.to_i
c = gets.strip
c = c.split(' ').map(&:to_i)

def run_game(c)
    i = 0
    jumps = 0
    until i == c.length - 1
        c[i + 2] == 0 ? i = i + 2 : i = i + 1
        jumps += 1
    end
    jumps
end

p run_game(c)
