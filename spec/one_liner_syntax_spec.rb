RSpec.describe 'shorthand syntax' do
  subject { 5 }

  context 'with classic syntax' do # this example is over two lines
    it 'will equal 5' do
      expect(subject).to eq(5)
    end
  end

  context 'with one-liner syntax' do # this is the same as the above, but moved onto one line
    it { is_expected.to eq(5) }
  end

end
