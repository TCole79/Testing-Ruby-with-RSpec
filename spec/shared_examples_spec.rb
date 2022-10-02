RSpec.shared_examples 'a ruby object with three elements' do # a shared_example has a string that's used below
  it 'returns the number of items' do
    expect(subject.length).to eq(3)
  end
end
#########

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples 'a ruby object with three elements' # this allows us to use the shared_examples block, it uses the string above
end

RSpec.describe String do
  subject { 'abc' }
  include_examples 'a ruby object with three elements'
end

RSpec.describe Hash do
  subject { { a: 1, b: 2, c: 3} }
  include_examples 'a ruby object with three elements'
end

class SausageLink # our custom class for this example
  def length
    3
  end
end

RSpec.describe SausageLink do
  subject { described_class.new }
end

