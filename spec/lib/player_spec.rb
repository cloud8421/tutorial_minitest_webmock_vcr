require_relative '../spec_helper'

describe Dish::Player do

  describe "default class attributes" do

    it "must include httparty methods" do
      Dish::Player.must_include HTTParty
    end

    it "must have the base url set to the Dribble API endpoint" do
      Dish::Player.base_uri.must_equal 'http://api.dribbble.com'
    end

  end

  describe "default instance attributes" do

    let(:player) { Dish::Player.new('simplebits') }

    it "must have an id attribute" do
      player.must_respond_to :username
    end

    it "must have the right id" do
      player.username.must_equal 'simplebits'
    end

  end

  describe "GET profile" do

    let(:player) { Dish::Player.new('simplebits') }

    before do
      VCR.insert_cassette 'base', :record => :new_episodes
    end

    after do
      VCR.eject_cassette
    end

    it "must have a profile method" do
      player.must_respond_to :profile
    end

    it "must parse the api response from JSON to Hash" do
      player.profile.must_be_instance_of Hash
    end

    it "must get the right profile" do
      player.profile
      player.profile["username"].must_equal "simplebits"
    end

  end

end
