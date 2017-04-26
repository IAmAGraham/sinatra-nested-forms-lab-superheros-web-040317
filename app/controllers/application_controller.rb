require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :newteam
    end

    post '/teams' do
      @team = Team.new(name: params["team"]["name"], motto: params["team"]["motto"])
      params["team"]["members"].each { |hero|
        h = Superhero.new(name:hero["name"], power:hero["power"], bio:hero["bio"])
        @team.add_superhero(h)
      }

      erb :team
    end


end
