class Item
  attr_accessor :id, :genre, :author, :label, :publish_date, :archive

  def initialize(genre:, author:, label:, publish_date:)
    @id = Random.rand(1..10_000)
    @genre = genre
    @author = author
    @label = label
    @publish_date = publish_date
    @archive = false
  end

  def move_to_archive
    @archive = true if self.can_be_archived?
  end

  def can_be_archived?
    @publish_date > 10
  end
end
