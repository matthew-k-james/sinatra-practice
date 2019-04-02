# my application requires the GEM (library) sinatra
require 'sinatra'
require './coolscore'

# this is a root definition - sinitra specific - web browser code.  Sinitra is a web framework, like Rails
# these methods below are Sinatra methods.
# the slash is for the route of the website doiman - the top level
# get is the browser requesting a page
# post is posting info back to the server
get('/') do
  '<form method="POST" action="/coolscore">
  <p>Your Name: <input type="text" name="name"></p>
  <p>Your Age: <input type="text" name="age"></p>
  <p>Your Favorite Colour: <input type="text" name="colour"></p>
  <p>Your Height (in metres): <input type="text" name="height"></p>
  <input type="submit">
</form>'
end


# today's work
post '/coolscore' do
  # anything in here has access to the form
  calculator = CalcScore.new
  my_score = calculator.calculate( params[:name], params[:age], params[:colour], params[:height])

  "Your Cool Score is #{my_score}"
  end



get '/comments' do
  'matthew 1234'
end
