# frozen_string_literal: true

require_relative '../cool_tool.rb'

describe 'Cool Score' do
  subject { CoolScore.new('Bob', 30, 'Pink', 1.0) }

  it 'Persons name' do
    expect(subject.name).to eq 'Bob'
  end

  it 'Persons age' do
    expect(subject.age).to eq 30
  end

  it 'calculates the coolscore' do
    expect(subject.score).to eq 15
  end

  it 'First letter of name' do
    expect(subject.firstletter).to eq 'B'
  end

  it 'Last letter of name' do
    expect(subject.lastletter).to eq 'b'
  end

  it 'checks the colour input is received' do
    expect(subject.colour).to eq 'Pink'
  end
end

describe 'Test score for age 40' do
  subject { CoolScore.new('Bob', 40, 'Pink', 1.0) }

  it 'calculates the coolscore' do
    expect(subject.score).to eq 20
  end
end

describe 'Test score for age 39 to check scores are rounded down' do
  subject { CoolScore.new('Bob', 39, 'Pink', 1.0) }

  it 'calculates the coolscore' do
    expect(subject.score).to eq 19
  end
end

describe 'Test score for age 39 to check first letter of name' do
  subject { CoolScore.new('Andy', 39, 'Pink', 1.0) }

  it 'calculates the coolscore' do
    expect(subject.score).to eq 29
  end
end

describe 'Test score for age 39 to check last letter of name' do
  subject { CoolScore.new('Dan', 39, 'Pink', 1.0) }

  it 'calculates the coolscore' do
    expect(subject.score).to eq 33
  end
end

describe 'Test score for age 39 to check first and last letter of name' do
  subject { CoolScore.new('Alan', 39, 'Pink', 1.0) }

  it 'calculates the coolscore' do
    expect(subject.score).to eq 43
  end
end

describe 'Assigns a value to the colour Orange' do
  subject { CoolScore.new('Alan', 39, 'Orange', 1.0) }
  it 'assigns a value to Orange' do
    expect(subject.colour_value).to eq 5
  end

  it 'calculates the coolscore including the colour Orange' do
    expect(subject.score).to eq 48
  end
end

describe 'Assigns a value to the colour Red' do
  subject { CoolScore.new('Alan', 39, 'Red', 1.0) }
  it 'assigns a value to Red' do
    expect(subject.colour_value).to eq 3
  end

  it 'calculates the coolscore including the colour Red' do
    expect(subject.score).to eq 46
  end
end

describe 'Assigns a value to the colour Blue' do
  subject { CoolScore.new('Alan', 39, 'Blue', 1.0) }
  it 'assigns a value to Blue' do
    expect(subject.colour_value).to eq(-1)
  end

  it 'calculates the coolscore including the colour Blue' do
    expect(subject.score).to eq 42
  end
end

describe 'Assigns a value to the colour Green' do
  subject { CoolScore.new('Alan', 39, 'Green', 1.0) }
  it 'assigns a value to Green' do
    expect(subject.colour_value).to eq(-5)
  end

  it 'calculates the coolscore including the colour Green' do
    expect(subject.score).to eq 38
  end
end
describe 'includes height criteria in the score calcualtion' do
  subject { CoolScore.new('Alan', 39, 'Green', 1.5) }

  it 'calculates the coolscore including the colour Green and height' do
    expect(subject.score).to eq 76
  end
end
