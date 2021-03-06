require('rspec')
require('rock_paper')

describe('String#beats?') do

  it("returns true if rock is the object and scissors is the argument") do
    expect("rock".beats?("scissors")).to(eq("Player 1 Wins"))
  end

  it("returns false if rock is the object and paper is the argument") do
    expect("rock".beats?("paper")).to(eq("Player 2 Wins"))
  end

  it("returns false if scissors is the object and rock is the argument") do
    expect("scissors".beats?("rock")).to(eq("Player 2 Wins"))
  end

  it("returns false if scissors is the object and paper is the argument") do
    expect("scissors".beats?("paper")).to(eq("Player 1 Wins"))
  end

  it("returns false if paper is the object and scissors is the argument") do
    expect("paper".beats?("scissors")).to(eq("Player 2 Wins"))
  end

  it("returns false if paper is the object and rock is the argument") do
    expect("paper".beats?("rock")).to(eq("Player 1 Wins"))
  end

  it("returns 'try again' if the object and the argument are the same") do
    expect("paper".beats?("paper")).to(eq("Try again."))
  end

end
