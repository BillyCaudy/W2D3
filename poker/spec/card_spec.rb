require 'card'

RSpec.describe Card do 
  subject(:card){card = Card.new('A','hearts')}
  describe "#initialize" do 
    it "Has value" do 
      expect(card.value).to eq 'A'
    end

    it "Has suit" do 
      expect(card.suit).to eq 'hearts'
    end
  end
end