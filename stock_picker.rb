def stock_picker(stock)
    profit = {}
    x = 0
	#Representing the lowest (sorted)stock value and first index of the array 
    y = -1
	#Representing the largest stock value in the sorted array
    if stock.max == stock[0] and stock.max == stock.last
        return [stock.index(stock.min), stock.length - 1]
    end
	#If the largest value is the first and last value the array breaks the loop
    while x < stock.length
		stock.length.times do
		    if stock.index(stock.sort[x]) < stock.index(stock.sort[y])
			#Representing that stock must bought before it is sold
		        profit[[stock.index(stock.sort[x]), stock.index(stock.sort[y])]] = (stock.sort[y] - stock.sort[x])
				#Indexes/Pair of days added as keys and difference in stock added as values
		    end
		    y -= 1
		end
		y = -1
		x += 1
	end
	return profit.key(profit.values.max)
	#Returns pair of days with largest difference in stock
end

stock_picker([17,3,6,9,15,8,6,1,10])