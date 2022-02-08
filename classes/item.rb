class Item
  attr_reader :genre, :id, :archive, :publish_date, :author, :label

  def initialize(publish_date, archive: false)
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
