RSpec.describe Hash do # 'Hash' is the class here

  # 'Subject' is a built in RSpec method that instantiates a class. For example, using Subject is the same as below:
  let(:subject) { Hash.new }

  it 'should start off empty' do
    puts subject
    puts subject.class
    expect(subject.length).to eq(0)
  end

  it 'is isolated between examples' do
    expect(subject.length).to eq(0)
  end

end
