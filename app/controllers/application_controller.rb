require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :index
    end

    get '/new' do
        erb :new
    end

    post '/teams' do
        @team = Team.new(params[:team])
        # @hero = Hero.new(params[:hero])
        # @heroes = Hero.all
        params[:team][:hero].each do |details|
            Hero.new(details)
        end
        @heroes = Hero.all
        erb :show
    end



end
