RSpec.describe 'start_with and end_with matchers' do
  describe 'caterpillar' do # watch out for case sensitivity
    it 'will check for substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')

      # expect(subject).to start_with('Cat') # this will fail due to case sensitivity
    end

    it { is_expected.to start_with('cat') }
    it { is_expected.to end_with('pillar') }
  end

  describe [:a, :b, :c, :d] do
    it 'will check for elements at beginning or end of the array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
      expect(subject).to end_with(:d)
    end

    it { is_expected.to start_with(:a, :b) }
    it { is_expected.to end_with(:d) }
  end
end
