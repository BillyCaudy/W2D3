require 'tdd_exercise'

RSpec.describe Array do
  
  describe "#my_uniq" do 
    subject(:array){array=[1,2,1,3,3]}
    it "should delete duplicate elements" do 
      expect(array.my_uniq).to eq [1,2,3]
    end
  end

  describe "#two_sum" do
    subject(:array){array=[-1, 0, 2, -2, 1]}
    it "return ordered pairs of idxs whose eles sum to 0" do 
      expect(array.two_sum).to eq [[0, 4], [2, 3]]
    end
  end

  describe "#my_transpose" do 
    subject(:matrix){matrix = [[0, 1, 2],[3, 4, 5],[6, 7, 8]]}
    it "interchanges eles at indices [a][b] and [b][a]" do  
      expect(matrix.my_transpose).to eq [[0, 3, 6],[1, 4, 7],[2, 5, 8]]
    end
  end

  describe "#stock_picker" do
    subject(:prices) { prices = [100,125,150,75,100] }
    it "returns array indices with greatest price difference" do
      expect(prices.stock_picker).to eq [0,2]
    end
    it "returns indices pairs with first index < second index" do
      best_days = prices.stock_picker
      expect(best_days[1] > best_days[0]).to eq true
    end
  end

end

