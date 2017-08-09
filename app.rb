require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      ships = params[:pirate][:ships]
      @ship1 = Ship.new(ships[0])
      @ship2 = Ship.new(ships[1])
      # ships.each_with_index do |ship, index|
        # @ship#{index+1} = Ship.new(ship[index])
      #end

      erb :"pirates/show"
    end

    get '/new' do
      erb :"pirates/new"
    end

    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end
  end
end
