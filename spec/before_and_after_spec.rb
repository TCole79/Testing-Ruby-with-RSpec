RSpec.describe 'before and after hooks' do
  before(:context) do # this will run once before the context block
    puts 'Before context'
  end

  before(:context) do # this will run once after the context block
    puts 'After context'
  end

  before(:example) do # runs before each :(whatever)
    puts 'Before example'
  end

  after(:example) do # runs after whatever is after :
    puts 'After example'
  end

  it 'is just a random example' do
    expect(5 * 4).to eq 20 # or .to eq(20)
  end

  it 'is another random example' do
    expect(3 - 2).to eq 1
  end
end
