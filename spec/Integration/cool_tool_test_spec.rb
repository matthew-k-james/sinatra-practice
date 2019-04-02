# frozen_string_literal: true

ENV['RACK_ENV'] = 'test'

require_relative '../../cool_tool.rb'
require 'rspec'
require 'rack/test'

describe 'Cool Score' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it 'displays home page' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Calculate Your Cool Score!')
  end

  it 'displays score page' do
    params = { name: 'Bob', age: 40, colour: 'Pink', height: 100 }
    post '/cool_score', params
    expect(last_response).to be_ok
    expect(last_response.body).to include('<p>20</p>')
    expect(last_response.body).to include('Your Cool Score!')
  end
end
