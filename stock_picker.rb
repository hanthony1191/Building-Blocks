def stock_picker(stock)
    profit = {}
    x = 0
    y = -1
    if stock.max == stock[0] and stock.max == stock.last
        return [stock.index(stock.min), stock.length - 1]
    end
    while x < stock.length
		stock.length.times do
		    if stock.index(stock.sort[x]) < stock.index(stock.sort[y])
		        profit[[stock.index(stock.sort[x]), stock.index(stock.sort[y])]] = (stock.sort[y] - stock.sort[x])
		    end
		    y -= 1
		end
		y = -1
		x += 1
	end
	return profit.key(profit.values.max)
end