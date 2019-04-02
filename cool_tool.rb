# frozen_string_literal: true

# Cool scoring

require 'sinatra'

get '/' do
  erb :cool_tool
end

post '/cool_score' do
  name_input = params[:name]
  age_input = params[:age].to_f
  colour_input = params[:colour]
  height_input = params[:height].to_f / 100
  score = CoolScore.new(name_input, age_input, colour_input, height_input)
  erb :cool_score, locals: { score: score.score }
end

# Create our class to calculate the cool score
class CoolScore
  attr_accessor :name, :age, :colour, :height

  def initialize(name, age, colour, height)
    @name = name
    @age = age
    @colour = colour
    @height = height
  end

  def score
    ((age * 0.5).floor + name_value + colour_value) * height_value
  end

  def firstletter
    name[0]
  end

  def lastletter
    name[-1]
  end

  def colour_value
    colour_score = { 'Orange' => 5, 'Red' => 3, 'Blue' => -1, 'Green' => -5 }
    colour_score.default = 0
    colour_score[colour]
  end

  def name_value
    if firstletter == 'A' && lastletter == 'n'
      24
    elsif firstletter == 'A'
      10
    elsif lastletter == 'n'
      14
    else
      0
    end
  end

  def height_value
    if height.between?(1.5, 1.9)
      2
    else
      1
    end
  end
end
