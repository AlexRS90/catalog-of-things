class Item
  attr_accessor :genre

  def initialize(author, label, publish_date)
    @id = Random.rand(1..1000)
    @genre = nil
    @author = author
    @label = label
    @publish_date = publish_date
    @archive = false
  end

  def add_genre(genre)
    @genre = genre
    @genre.item.push(self) unless @genre.include?(genre)
  end

  def move_to_archive
    @archive = true if can_be_archived?
  end

  private

  def can_be_archived?
    @publish_date > 10
  end
end
