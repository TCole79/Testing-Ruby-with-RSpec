class Card
  attr_reader :type
  def initialize(type)
    @type = type
  end
end

RSpec.describe 'Card' do # card class
  it 'has a type' do
    # this is exactly the same as using 'it' - specify 'has a type' do
    card = Card.new('Ace of Spades')
    expect(card.type).to eq('Ace of Spades')
  end
end
