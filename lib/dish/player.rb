module Dish

  class Player

    attr_accessor :id

    include HTTParty

    base_uri 'http://api.dribbble.com'

    def initialize(id)
      self.id = id
    end

    def profile
      self.class.get "/players/#{self.id}"
    end

  end

end
