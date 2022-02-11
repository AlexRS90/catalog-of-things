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

  def add_author(author)
    @author = author
    author.add_item(self) unless author.items.include?(self)
  end

  def add_genre(genre)
    @genre = genre
    genre.add_item(self) unless genre.items.include?(self)
  end

  def add_label(label)
    @label = label
    label.add_item(self) unless label.items.include?(self)
  end

  def move_to_archive
    @archive = true if can_be_archived?
  end

  def can_be_archived?
    @publish_date > 10
  end
end
