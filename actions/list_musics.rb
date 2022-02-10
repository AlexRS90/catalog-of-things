class MusicList
  def self.list_music_albums(musics)
    puts
    puts 'Your musics is empty' if musics.empty?
    musics.each_with_index do |music, idx|
      print "#{idx + 1}) Title: #{music['title']},"
      print " Genre: #{music['genre']['name']}, On Spotify: #{music['on_spotify']}"
      puts
    end
    puts
  end
end
