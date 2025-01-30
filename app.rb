require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get ("/rock") do
  move = ["rock", "paper", "scissors"]
  @comp_move = move.sample

  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  else @comp_move == "scissors"
    @outcome = "won"
  end

  erb(:rock)
end

get ("/paper") do
  move = ["rock", "paper", "scissors"]
  @comp_move = move.sample

  if @comp_move == "rock"
    @outcome = "won"
  elsif @comp_move == "paper"
    @outcome = "tied"
  else @comp_move == "scissors"
    @outcome = "lost"
  end

  erb(:paper)
end

get ("/scissors") do
  move = ["rock", "paper", "scissors"]
  @comp_move = move.sample

  if @comp_move == "rock"
    @outcome = "lost"
  elsif @comp_move == "paper"
    @outcome = "won"
  else @comp_move == "scissors"
    @outcome = "tied"
  end

  erb(:scissors)
end
