require_relative '../classes/item'

describe Item do
  before(:each) do
    @new_item = Item.new(
      genre: 'Genre',
      author: 'Author',
      label: 'Label',
      publish_date: 20)
  end
  context 'when testing the item class' do
    it 'should return true if published date is greater than 10' do
      can_be_archived = @new_item.send(:can_be_archived?)
      expect(can_be_archived).to eq true
    end
    it 'should make archive true if can_be_archived is true' do
      move_to_archive = @new_item.send(:move_to_archive)
      expect(move_to_archive).to eq true
    end
  end
end