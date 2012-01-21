require_relative '../spec_helper'

describe Dish::Player do

  describe "default attributes" do

    it "must include httparty methods" do
      Dish::Player.must_include HTTParty
    end

    it "must have the base url set to the Dribble API endpoint" do
      Dish::Player.base_uri.must_equal 'http://api.dribbble.com/'
    end

  end

end
