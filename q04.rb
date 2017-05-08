n =20 
m = 3
stick_cnt = 1
num_of_times = 0

while stick_cnt < n
	if stick_cnt < m
		stick_cnt = stick_cnt * 2
	else
		stick_cnt = stick_cnt + m
	end
	num_of_times += 1
end

puts num_of_times
