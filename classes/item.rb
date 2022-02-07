class Item
  def initialize(genre, author, source, label, publish_date)
    @id = Random.rand(1..10_000)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archive = false
  end

  def move_to_archive
    @archive = true if can_be_archived?
  end

  private

  def can_be_archived?
    true if @publish_date > 10
  end
end
