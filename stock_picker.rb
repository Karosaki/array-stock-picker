def stock_picker(prices_array)
  min_price = prices_array[0]
  min_index = 0
  profit = 0
  days = [0, 0]

  prices_array.each_with_index do |price, index|
    if price < min_price
      min_price = price
      min_index = index
      next
    end
  
    if price - min_price > profit
      profit = price - min_price
      days = [min_index, index]
    end
  end

  days
end

array = [17, 3, 6, 9, 15, 8, 5, 1, 10]

print stock_picker(array)