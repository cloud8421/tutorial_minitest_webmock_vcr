module Dish

  class Player

    include HTTParty

    base_uri 'http://api.dribbble.com'

    def profile
      self.class.get '/players/simplebits'
    end

  end

end
