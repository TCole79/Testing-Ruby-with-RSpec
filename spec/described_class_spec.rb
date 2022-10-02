# described_class is a rspec helper method

class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  # subject { King.new('Boris') }
  # let(:louis) { King.new('Louis') }

  subject { described_class.new('Boris') } # described_class is alternate to above 'King' - it can save time from
  # manually changing all the names
  let(:louis) { described_class.new('Louis') }

  it 'represents a great person' do
    expect(subject.name).to eq('Boris')
    expect(louis.name).to eq('Louis')
  end

end
