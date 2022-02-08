require_relative './item'

class Music < Item
  attr_accessor :archive, :publish_date

  def initialize(publish_date, on_spotify: false)
    super(publish_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    true if super && @on_spotify
  end
end
