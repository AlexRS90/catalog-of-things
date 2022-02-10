require_relative '../classes/musics'

describe Music do
  before(:each) do
    @new_album = Music.new(name: 'Album', 
      on_spotify: 'y', 
      genre: 'genre', 
      author: 'Author', 
      label: 'Label', 
      publish_date: 20)
  end
  context 'When testing album' do
    it 'should return new album object' do
      expect(@new_album.on_spotify).to eq 'y'
      expect(@new_album.publish_date).to eq 20
    end
    it 'should return true if on_spotify and super are true' do
      can_be_archived = @new_album.send(:can_be_archived?)
      expect(can_be_archived).to eq true
    end
  end
end