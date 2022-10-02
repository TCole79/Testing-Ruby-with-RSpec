RSpec.describe Array do
  subject(:sally) do
    [0, 1]
  end

  it 'has two array elements' do
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
  end

  it 'is equal to original array' do
    expect(sally).to eq([0, 1])
  end

end
