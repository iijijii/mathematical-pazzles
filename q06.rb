ans = 0

(0..10000).to_a
	.delete_if{|n| n.odd? }
	.each do |target|
		
		initial_val = target * 3 + 1
		current = initial_val

		while current != 1 
			current = current.even?	? current / 2 : current * 3 + 1

			if current == target
				ans += 1
				break
			end
		end
end

puts ans
