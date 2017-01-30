require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"
require 'pry'

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  "<h1>The LACKP Homepage<h1>"
end

get "/teams" do
  @team_data = TeamData::ROLL_CALL
  @team_names= @team_data.keys
  erb :team_names
end

get"/teams/:team_name" do
  @team_data = TeamData::ROLL_CALL
  @team_name = params[:team_name]
  erb :team
end
