RSpec.describe 'satisfy matcher' do
  subject { 'racecar' } # racecar is a palindrome, if we used racecars it would fail

  it 'is a palindrome' do
    expect(subject).to satisfy { |value| value == value.reverse } # what we want tested is in the block, value = racecar here
  end

  it 'can accept a custom failed assertion message' do
    expect(subject).to satisfy('be a palindrome') do |value| # word in block can be anything you like, here it's value
      value == value.reverse
    end
  end
end
