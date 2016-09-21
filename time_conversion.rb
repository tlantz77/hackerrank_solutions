hh = time.slice!(0..1)

if time.slice!(-2..-1) == "PM"
    hh = hh.to_i + 12 if hh != "12"
	time = hh.to_s + time
else
    hh = "00" if hh == "12"
    time = hh + time
end

puts time
