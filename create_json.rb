class CreateFiles
  def self.book_file
    return if File.file?('./data/books.json')

    File.write('./data/books.json', JSON.dump([]))
  end

  def self.album_file
    return if File.file?('./data/musics.json')

    File.write('./data/musics.json', JSON.dump([]))
  end

  def self.game_file
    return if File.file?('./data/games.json')

    File.write('./data/games.json', JSON.dump([]))
  end
end
