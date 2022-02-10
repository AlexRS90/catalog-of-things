require_relative '../classes/game'

describe Game do
  before :each do
    @new_game = Game.new(name: 'Zelda',
                         multiplayer: false,
                         last_played_at: '2022/01/30',
                         genre: 'genre',
                         author: 'author',
                         label: 'label',
                         publish_date: '2019/03/20')
  end
  context 'Test a new game' do
    it 'should return new game object' do
      expect(@new_game.multiplayer).to eq false
      expect(@new_game.last_played_at).to eq '2022/01/30'
    end
  end
end
