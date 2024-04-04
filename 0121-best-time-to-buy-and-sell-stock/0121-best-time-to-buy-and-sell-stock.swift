class Solution {
     func maxProfit(_ prices: [Int]) -> Int {
           var left = 0 //buying
           var right = 1
            var maxProfit = 0
        while (right < prices.count) {
            
            if prices[left] < prices[right]{
                maxProfit = max(prices[right] - prices[left], maxProfit)
            }else{
                left = right
            }
            right = right + 1
         }
        return maxProfit
       }
}