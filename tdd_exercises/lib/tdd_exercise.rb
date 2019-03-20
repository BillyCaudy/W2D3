class Array

  def my_uniq
    self.each.with_index do |ele,idx|
      self.delete_at(idx) if self[0...idx].include?(ele)
    end
    self
  end

  def two_sum
    pairs = []
    self.each.with_index do |eleA,idxA|
      self[idxA+1..-1].each.with_index do |eleB,idxB|
        pairs << [idxA,idxA + 1 + idxB] if eleA + eleB == 0
      end
    end
    pairs
  end

  def my_transpose
    transpose = []
    i = 0
    while i < self.length 
      j = 0
      transrow = []
      while j < self.length
        transrow << self[j][i]
        j+=1
      end
      transpose << transrow
      i+=1
    end
    transpose
  end

  def stock_picker
    price_diff = 0
    best_days = []
    (0...self.length-1).each do |buy_day|
      (buy_day+1...self.length).each do |sell_day|
        buy_price = self[buy_day]
        sell_price = self[sell_day]
        profit = sell_price - buy_price
        if profit > price_diff
          price_diff = profit
          best_days = [buy_day,sell_day]
        end
      end
    end
    best_days
  end

end


