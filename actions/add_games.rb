require './classes/game'
require './inputs/item_inputs'
require './inputs/game_inputs'
require_relative 'instance_creator'
require 'json'

class AddGame
  def self.add_new_game(games)
    item_name, item_genre, item_author_first, item_author_last, item_label_title,
    item_label_color, item_date = ItemInputs.item_inputs
    multiplayer, game_last_played = GameInput.game_inputs

    game_instance = Game.new(name: item_name, multiplayer: multiplayer == 'y', last_played_at: game_last_played,
                             genre: {}, author: {}, label: {}, publish_date: item_date)

    genre = InstanceCreator.genre_instance(item_genre, game_instance)
    author = InstanceCreator.author_instance(item_author_first, item_author_last, game_instance)
    label = InstanceCreator.label_instance(item_label_title, item_label_color, game_instance)

    game = { 'json_class' => 'game', 'title' => game_instance.name, 'genre' => genre,
             'author' => author, 'label' => label, 'publish_date' => game_instance.publish_date,
             'multiplayer' => game_instance.multiplayer, 'last_played_at' => game_instance.last_played_at }

    games << game
    puts 'Game Crated'
  end
end
