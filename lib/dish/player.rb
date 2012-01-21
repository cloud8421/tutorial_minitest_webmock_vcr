module Dish

  class Player

    attr_accessor :username

    include HTTParty

    base_uri 'http://api.dribbble.com'

    def initialize(username)
      self.username = username
    end

    def profile(force = false)
      force ? @profile = get_profile : @profile ||= get_profile
    end

    def method_missing(name)
      profile[name.to_s].nil? ? super : profile[name.to_s]
    end

    private

    def get_profile
      self.class.get("/players/#{self.username}")
    end

  end

end
