require_relative './item'

class Music < Item
  attr_accessor :on_spotify, :publish_date

  def initialize(publish_date, on_spotify)
    super(publish_date)
    @on_spotify = on_spotify
  end

  private

  def can_be_archived?
    true if super && @on_spotify
  end
end
