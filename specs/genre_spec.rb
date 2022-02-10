require_relative '../classes/genre'
require_relative '../classes/item'

describe Genre do
  before(:each) do
    @new_genre = Genre.new(name: 'Genre')
    @item = Item.new(
      genre: 'genre',
      author: 'Author',
      label: 'Label',
      publish_date: 20
    )
  end
  context 'When testing creation of genre instance' do
    it 'Should create a genre when we call the class constructor' do
      expect(@new_genre.name).to eq 'Genre'
    end
  end
  context 'When testing creation of item instance' do
    it 'Should add a new item to the items array' do
      @new_genre.add_item(@item)
      expect(@new_genre.items.length).to eq 1
    end
  end
end
