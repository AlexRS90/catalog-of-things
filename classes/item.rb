class Item
  attr_reader :id, :genre, :author, :label, :publish_date

  def initialize(genre:, author:, label:, publish_date:)
    @id = Random.rand(1..1000)
    @genre = genre
    @author = author
    @label = label
    @publish_date = publish_date
    @archive = false
  end

  def move_to_archive
    @archive = true if can_be_archived?
  end

  private

  def can_be_archived?
    @publish_date > 10
  end
end
