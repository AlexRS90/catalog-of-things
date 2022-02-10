require '../classes/label'
require '../classes/item'

describe Label do
  before :each do
    @new_label = Label.new(title: 'New', color: 'Red')
    @item = Item.new(genre: 'genre', author: 'author', label: 'label', publish_date: 20)
  end

  context 'Test a new label instance' do
    it 'Should create a label when we call the class constructor' do
      expect(@new_label).to be_instance_of(Label)
    end
  end

  context 'Creation a item instance' do
    it 'Add a new item to items array' do
      @new_label.add_item(@item)
      expect(@new_label.items.length).to eq 1
    end
  end

  context 'Item instance label prop value' do
    it 'Item instance label prop should be equal to the current instance of label' do
      @new_label.add_item(@item)
      expect(@item.label).to eq(@new_label)
    end
  end
end
