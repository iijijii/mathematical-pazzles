n = 100
arr = Array.new(n, true)

(1..n - 1).each do |i|
	j = i
	while j < n
		arr[j] = !arr[j]
		j += (i + 1) 
	end
end

n.times do |i|
	puts i + 1 if arr[i]
end
