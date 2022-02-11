class GameInput
  def self.game_inputs
    puts
    print 'Is the game multiplayer? [y/n]: '
    multiplayer = gets.chomp.downcase
    print 'When was the last date you played?(YY/MM/DD): '
    game_last_played = gets.chomp

    [multiplayer, game_last_played]
  end
end
