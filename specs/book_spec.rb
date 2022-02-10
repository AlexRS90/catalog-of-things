require_relative '../classes/book'

describe Book do
  before :each do
    @new_book = Book.new(name: 'Lord of the rings',
                         publisher: 'Universal',
                         cover_state: 'bad',
                         genre: 'genre',
                         author: 'author',
                         label: 'label',
                         publish_date: '1956/08/05')
  end

  context 'Test book instance' do
    it 'should be an instance of book' do
      expect(@new_book).to be_an_instance_of(Book)
    end
  end

  context 'Test book instance' do
    it 'should return new game object' do
      expect(@new_book.name).to eq('Lord of the rings')
      expect(@new_book.cover_state).to eq('bad')
      expect(@new_book.publisher).to eq('Universal')
    end
  end
end
