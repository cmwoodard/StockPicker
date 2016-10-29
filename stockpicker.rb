def stock_picker(arr)
	buy_day = arr[0]
	sell_day = arr[1]
	profit = sell_day-buy_day
	
	for element1 in (0..arr.length)
		for element2 in (element1..arr.length-1)
			if arr[element2]-arr[element1] > profit
				profit = arr[element2]-arr[element1]
				buy_day = element1
				sell_day = element2
			
			end
		end
	end
	puts "Buy day: #{buy_day}, Sell Day: #{sell_day} Profit: #{profit}"
end
	
	
stock_picker([2,3,6,9,8,6,1,25,3,7,21,5])