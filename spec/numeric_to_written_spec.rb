require('numeric_to_written')
require('rspec')

describe('Fixnum#numeric_to_written') do

  it("takes a single digit number and returns the written out value") do
    expect(9.numeric_to_written()).to(eq("nine"))
  end
  it("takes all double digit numbers and returns the written out value") do
    expect(34.numeric_to_written()).to(eq("thirty four"))
  end
  
end
