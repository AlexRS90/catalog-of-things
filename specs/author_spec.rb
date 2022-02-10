require '../classes/author'
require '../classes/item'

describe Author do
  before :each do
    @new_author = Author.new(first_name: 'Alex', last_name: 'Ramos')
    @item = Item.new(genre: 'genre', author: 'author', label: 'label', publish_date: 20)
  end

  context 'Test a new author instance' do
    it 'Should create a author when we call the class constructor' do
      expect(@new_author).to be_instance_of Author
    end
  end

  context 'Creation a item instance' do
    it 'Add a new item to item array' do
      @new_author.add_item(@item)
      expect(@new_author.items.length).to eq 1
    end
  end
end
