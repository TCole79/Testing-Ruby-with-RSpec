RSpec.describe 'raise error matcher' do

  # method for testing
  def some_method
    x
  end

  # first example - which is not overly helpful until we define a specific error as per example two
  it 'can check for any error' do
    expect { some_method }.to raise_error
  end
  # second example
  it 'can check for a specifc error being raised' do
    expect { some_method }.to raise_error(NameError)
    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
  end


  # custom error example
  class CustomError < StandardError; end
  
  it 'can check for a user-created error' do
    expect { raise CustomError }.to raise_error(CustomError)
  end

end
