require './classes/game'
require_relative 'item_inputs'
require_relative 'game_inputs'
require_relative 'instance_creator'
require 'json'

class AddGame
  def self.add_new_game(games)
    item_name, item_genre, item_author_first, item_author_last, item_label_title,
    item_label_color, item_date = ItemInputs.item_inputs
    multiplayer, game_last_played = GameInput.game_inputs

    genre = InstanceCreator.genre_instance(item_name, item_genre)
    author = InstanceCreator.author_instance(item_author_first, item_author_last)
    label = InstanceCreator.label_instance(item_label_title, item_label_color)

    game_instance = Game.new(multiplayer: multiplayer, last_played_at: game_last_played,
                             genre: genre, author: author, label: label, publish_date: item_date)

    game = { 'json_class' => 'game', 'genre' => game_instance.genre,
             'author' => game_instance.author, 'label' => game_instance.label,
             'publish_date' => game_instance.publish_date, 'multiplayer' => game_instance.multiplayer,
             'last_played_at' => game_instance.last_played_at }
    games << game
    puts 'Game Crated'
  end
end
