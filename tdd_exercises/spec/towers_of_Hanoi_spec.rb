require 'Towers_of_Hanoi'

RSpec.describe Towers_of_Hanoi do 
  subject(:three_stacks){three_stacks = Towers_of_Hanoi.new}
  
  describe "#initialize" do 
    it "creates 3 stacks" do 
      expect(three_stacks.stacks.length).to eq 3
    end

    it "1st stack has 4 discs" do 
      expect(three_stacks.stacks[0].length).to eq 4
    end

    it "2nd and 3rd stacks have 0 discs" do 
      expect(three_stacks.stacks[1].empty?).to eq true
      expect(three_stacks.stacks[2].empty?).to eq true
    end

    it "1st stack is ordered" do 
      expect(three_stacks.stacks[0]).to eq three_stacks.stacks[0].sort
    end
  end

  describe "#get_move" do
    it "Checks if player chose valid stacks"

    it "Doesn't pull disc from empty stack"

    it "Doesn't place larger disc on smaller disc"

    it "Places disc if valid_move?"

  end

end