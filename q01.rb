def is_palindrome?(str)
	str == str.reverse
end

decimal_num = 11
while true
	binary_num_str = decimal_num.to_s(2)
	octal_num_str = decimal_num.to_s(8)
	if is_palindrome?(decimal_num.to_s)	&&
			is_palindrome?(binary_num_str) &&
	 		is_palindrome?(octal_num_str)
		puts decimal_num
		puts binary_num_str
		puts octal_num_str
		break
	end
	decimal_num += 2
end
