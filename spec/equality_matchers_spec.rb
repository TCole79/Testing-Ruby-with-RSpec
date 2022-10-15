RSpec.describe 'equality matchers' do
  let(:a) { 3.0 } # ruby float
  let(:b) { 3 } # ruby integer

  describe 'eq matcher' do
    it 'tests for value and ignores type' do
      expect(a).to eq(3)
      expect(a).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  describe 'eql matcher' do
    it 'tests for the value, including the same type' do
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(b)
    end
  end

  describe 'equal and be matchers' do # equal, and be, are the same
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'cares about object identity' do
      expect(c).to eq(d)
      expect(c).to eql(d)

      # expect(c).to equal(d) # this is comparing two memory addresses, so it fails
      expect(c).to be(e)
      expect(c).not_to equal(d)
      expect(c).not_to equal([1, 2, 3]) # not same object in memory
    end
  end
end
