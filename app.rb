require "sinatra"
require "sinatra/reloader"

moves = ["rock", "paper", "scissors"]
get("/") do
  @comp_move = moves.sample
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  <p>#{comp_move}</p>
  "
end

get("/rock") do
  @comp_move = moves.sample
  @our_move = "rock"

  if @comp_move == @our_move:
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end
end

get("/paper") do
  @comp_move = moves.sample
  @our_move = "paper"

  if @comp_move == @our_move:
    @outcome = "tied"
  elsif comp_move == "scissors"
    @outcome = "lost"
  else
    @outcome = "won"
  end
end

get("/scissors") do
  @comp_move = moves.sample
  @our_move = "scissors"

  if @comp_move == @our_move:
    @outcome = "tied"
  elsif comp_move == "rock"
    @outcome = "lost"
  else
    @outcome = "won"
  end
end
