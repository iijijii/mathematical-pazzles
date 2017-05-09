@coin_cnt = 0

def change(target_amount, coins, max_coin_cnt)
	target_coin = coins.shift
	if coins.size == 0
		@coin_cnt += 1 if target_amount / target_coin <= max_coin_cnt
	else
		(0..target_amount/target_coin).each do |j|
			change(target_amount - target_coin * j, coins.clone, max_coin_cnt - j)
		end
	end
end

change(1000, [500, 100, 50, 10], 15)
puts @coin_cnt
