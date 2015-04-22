require('rspec')
require('rps')

describe('String#rps') do
  it("Returns 1 if rock is the object and scissors is the argument") do
    expect("rock".beat("scissors")).to(eq(1))
  end

  it("Returns 0 if rock is the object and paper is the argument") do
    expect("rock".beat("paper")).to(eq(0))
  end

  it("Returns 1 if rock is the object and paper is the argument") do
    expect("scissors".beat("paper")).to(eq(1))
  end

  it("Returns 0 if rock is the object and paper is the argument") do
    expect("scissors".beat("rock")).to(eq(0))
  end

  it("Returns 1 if rock is the object and paper is the argument") do
    expect("paper".beat("rock")).to(eq(1))
  end

  it("Returns 0 if rock is the object and paper is the argument") do
    expect("paper".beat("scissors")).to(eq(0))
  end

  it("Returns 2 if rock is the object and paper is the argument") do
    expect("rock".beat("rock")).to(eq(2))
  end

  it("Returns 2 if rock is the object and paper is the argument") do
    expect("paper".beat("paper")).to(eq(2))
  end

  it("Returns 2 if rock is the object and paper is the argument") do
    expect("scissors".beat("scissors")).to(eq(2))
  end
end
