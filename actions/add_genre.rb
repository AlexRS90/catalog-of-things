class AddGenre
  def self.add_genre(genres)
    print 'Name: '
    name = gets.chomp
    genre_instance = Genre.new(name)
    genre = {
      'class' => 'Genre', 'name' => genre_instance.name
    }
    genres << genre
    puts 'Genre created successfully'
  end
end
