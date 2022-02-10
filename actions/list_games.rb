class GameList
  def self.list_all_games(games)
    puts
    puts 'Your collection is empty' if games.empty?
    games.each_with_index do |game, idx|
      print "#{idx}) Title: #{game['title']}, Gender: #{game['genre']['name']}, Author: #{game['author']['firstname']} "
      print "#{game['author']['lastname']}, Multiplayer: #{game['multiplayer']}"
      puts
    end
    puts
  end
end
