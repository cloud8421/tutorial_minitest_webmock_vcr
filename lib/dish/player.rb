module Dish

  class Player

    attr_accessor :id

    include HTTParty

    base_uri 'http://api.dribbble.com'

    def profile
      self.class.get '/players/simplebits'
    end

  end

end
