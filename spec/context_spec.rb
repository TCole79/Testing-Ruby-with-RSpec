RSpec.describe '#even? method' do
  # context is an alias for 'describe' and operate in the same way
  context 'with even number' do
    it 'will return true' do
      expect(4.even?).to eq true
    end
  end

  context 'with odd number' do
    it 'will return false' do
      expect(3.even?).to eq false
    end
  end
end
