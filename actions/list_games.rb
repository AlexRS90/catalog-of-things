class GameList
  def self.list_all_games(games)
    puts
    puts 'Your collection is empty' if games.empty?
    games.each_with_index do |game, idx|
      print "#{idx + 1}) Title: #{game['title']}, Gender: #{game['genre']['name']}, "
      print "Author: #{game['author']['firstname']} "
      print "#{game['author']['lastname']}, Multiplayer: #{game['multiplayer'] == true ? 'Yes' : 'No'}"
      puts
    end
    puts
  end
end
