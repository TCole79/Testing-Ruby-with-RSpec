RSpec.describe Hash do

  subject(:bob) do # if you use this block you get access to specific RSpec syntax
    { a: 1, b: 2 }
  end

  # let(:bob) { { a: 1, b: 2 } } # this is the same as the subject block above

  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2) # this is the same as above
  end

  describe 'a nested example' do
    it 'has two key-value pairs' do
      expect(subject.length).to eq(2)
      expect(bob.length).to eq(2) # this is the same as above
    end
  end
end
