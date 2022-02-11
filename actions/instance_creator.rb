require './classes/genre'
require './classes/author'
require './classes/label'

class InstanceCreator
  def self.genre_instance(genre_name, item)
    genre = Genre.new(name: genre_name)
    genre.add_item(item)
    { 'name' => genre.name }
  end

  def self.author_instance(item_author_first, item_author_last, item)
    author = Author.new(first_name: item_author_first, last_name: item_author_last)
    author.add_item(item)
    { 'firstname' => author.first_name, 'lastname' => author.last_name }
  end

  def self.label_instance(item_label_title, item_label_color, item)
    label = Label.new(title: item_label_title, color: item_label_color)
    label.add_item(item)
    { 'title' => label.title, 'color' => label.color }
  end
end
