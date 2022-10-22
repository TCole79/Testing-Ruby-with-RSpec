RSpec.describe 'firetruck' do
  it 'will test for the presence of a string' do
  expect(subject).to start_with('fire')
  end
end

RSpec.describe 20 do
  it 'can be tested with compound assertions' do
    expect(subject).to be_even.and respond_to(:times)
  end
end

RSpec.describe [4, 8, 15, 16, 23, 42] do
  it 'includes and excludes values' do
    expect(subject).to include(42).and start_with(4, 8, 15)
  end
end
