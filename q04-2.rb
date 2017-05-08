def cut(n, m, stick_cnt)
	if stick_cnt >= n
		0
	elsif stick_cnt < m
		1 + cut(n, m, stick_cnt * 2)
	else
		1 + cut(n, m, stick_cnt + m)
	end
end

puts cut(8, 3, 1)
puts cut(20, 3, 1)
puts cut(100, 5, 1)
