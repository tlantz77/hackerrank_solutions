t = gets.strip.to_i
for a0 in (0..t-1)
    n,k = gets.strip.split(' ')
    n = n.to_i
    k = k.to_i
    a = gets.strip
    a = a.split(' ').map(&:to_i)

    def cancelled?(a, k)
        on_times = 0
        a.each do |t|
            on_times += 1 if t <= 0
        end
        on_times < k ? "YES\n" : "NO\n"
    end

    print cancelled?(a, k)


end
