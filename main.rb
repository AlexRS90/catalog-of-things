require_relative 'menu'

def main 
  state = true

  while state == true do
    List.list

    choice = gets.chomp

    case choice
    when '1'
      #List books
    when '2'
      #List all music albums
    when '3'
      #List all games
    when '4'
      #List all genres
    when '5'
      #list all labels
    when '6'
      #List all author
    when '7'
      #Add a book
    when '8'
      #Add a music album
    when '9'
      #Add a game
    when '10'
      state = false
      puts "Bye Bye"
    end
  end
end

main