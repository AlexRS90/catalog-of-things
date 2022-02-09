require './classes/genre'
require './classes/author'
require './classes/label'

class InstanceCreator
  def self.genre_instance(genre_name)
    genre = Genre.new(name: genre_name)
    { 'name' => genre.name }
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
