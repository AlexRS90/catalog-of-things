require './classes/genre'
require './classes/author'
require './classes/label'

class InstanceCreator
  def self.genre_instance(item_name, item_genre)
    genre = Genre.new(name: item_name, genre: item_genre)
    { 'name' => genre.name, 'genre' => genre.genre }
  end

  def self.author_instance(item_author_first, item_author_last)
    author = Author.new(first_name: item_author_first, last_name: item_author_last)
    { 'firstname' => author.first_name, 'lastname' => author.last_name }
  end

  def self.label_instance(item_label_title, item_label_color)
    label = Label.new(title: item_label_title, color: item_label_color)
    { 'title' => label.title, 'color' => label.color }
  end
end
