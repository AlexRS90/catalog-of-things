require_relative 'item'

class Book < Item
  attr_accessor :name, :publisher, :cover_state

  def initialize(name:, publisher:, cover_state:, **args)
    super(**args)
    @name = name
    @publisher = publisher
    @cover_state = cover_state
  end

  private

  def can_be_archived?
    super || @cover_state == 'bad'
  end
end
