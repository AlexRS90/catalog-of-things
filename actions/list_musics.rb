class MusicList
  def self.list_music_albums(musics)
    puts
    puts 'Your musics is empty' if musics.empty?
    musics.each_with_index do |music, idx|
      print "#{idx + 1}) Id: #{music['id']}), Class: #{music['class']}"
      print " On Spotify: #{music['on_spotify']}, Genre: #{music['genre']['name']}}"
      puts
    end
    puts
  end
end
