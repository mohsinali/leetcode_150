# 121. Best Time to Buy and Sell stock
def max_profit(prices)
  l,r = 0,1
  max_profit = 0

  while r < prices.size do
    if prices[l] < prices[r]
      profit = prices[r] - prices[l]
      max_profit = [max_profit, profit].max

    else
      l = r
    end

    r += 1
  end

  return max_profit
end