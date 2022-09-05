class Card
  attr_reader :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  let(:card) { Card.new('Queen', 'Spades') } # let method takes a symbol, which is the name of the variable to
  # be available in the test below
  # let with no bang operator is lazy loaded when the spec needs it, not before
  # let! with bang operator loads it into memory at the start of the example

  it 'has a rank' do
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison} but I got #{card.suit} instead!"
  end
end
