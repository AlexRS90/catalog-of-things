require_relative './item'

class Game < Item
  attr_accessor :name, :multiplayer, :last_played_at

  def initialize(name:, multiplayer:, last_played_at:, **all)
    super(**all)
    @name = name
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  private

  def can_be_archived?()
    true if @last_played_at > 2
  end
end
