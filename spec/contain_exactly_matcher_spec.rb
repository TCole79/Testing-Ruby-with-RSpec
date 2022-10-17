RSpec.describe 'contain exactly matchers' do
  subject { [1, 2, 3] }

  describe 'long form syntax' do
    it 'will check for the presence of all elements' do
      expect(subject).to contain_exactly(1, 2, 3)
      expect(subject).to contain_exactly(3, 2, 1) # order does not matter
    end
  end

  it { is_expected.to contain_exactly(1, 2, 3) } # one line syntax
end
