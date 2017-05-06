(1000..9999).each do |n|
  operators = ['*', ' ']	
	digits_cnt = n.to_s.size

	operators.size.times do |i|
		operators.size.times do |j|
			operators.size.times do |k|
				f = n.to_s
					.insert(1, operators[k])
					.insert(3, operators[j])
					.insert(5, operators[i])
					.gsub(/ /, '')
				unless !f.include?('*')
					f = f.gsub(/0\d+/){|num| num.to_i.to_s}
					ans = eval(f)
					puts n if ans.to_s == n.to_s.reverse
				end
			end
		end
	end
end
