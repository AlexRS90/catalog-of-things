class Item
  attr_accessor :id, :genre, :author, :label, :publish_date

  def initialize(genre:, author:, label:, publish_date:)
    @id = Random.rand(1..10_000)
    @genre = genre
    @author = author
    @label = label
    @publish_date = publish_date
    @archive = false
  end

  def add_genre(genre)
    @genre = genre
    @genre.item.push(self) unless @genre.include?(genre)
  end

  def add_author=(author)
    @author = author
    @author.item.push(self) unless @author.item.include?(self)
  end

  def move_to_archive
    @archive = true if can_be_archived?
  end

  private

  def can_be_archived?
    @publish_date > 10
  end
end
