require_relative './item'

class Music < Item
  attr_accessor :name, :on_spotify, :publish_date

  def initialize(name:, on_spotify:, **all)
    super(**all)
    @name = name
    @on_spotify = on_spotify
  end

  # private

  def can_be_archived?
    true if super && @on_spotify
  end
end
