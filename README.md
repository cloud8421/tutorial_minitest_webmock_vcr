# Sample library to interact with the Dribbble API

The purpose of this library is merely to illustrate a simple and effective way
to wrap a web api in a Ruby DSL and test it thoroughly.

## Usage

Can easily be used from the console. From the root directory:

    require './lib/dish'

    player = Dish::Player.new('simplebits')
    player.profile
    player.twitter_screen_name

By default, the library caches the profile data. If you need to refresh it,
just use:

    player.profile(true)
