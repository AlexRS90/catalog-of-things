require_relative './item'
class Genre
  attr_accessor :name, :genre, :items

  def initialize(name:, genre:)
    @id = Random.rand(1..1000)
    @name = name
    @genre = genre
    @items = []
  end

  def add_item(item)
    @items << item
    item.genre = self
  end
end
