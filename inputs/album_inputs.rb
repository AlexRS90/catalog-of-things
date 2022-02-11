class AlbumInputs
  def self.album_inputs
    on_spotify = nil
    while on_spotify != 'y' && on_spotify != 'n'
      print 'On Spotify? [y/n]: '
      on_spotify = gets.chomp
      case on_spotify
      when 'y'
        true
      when 'n'
        false
      else
        puts 'invalid input'
      end
    end
    on_spotify
  end
end
