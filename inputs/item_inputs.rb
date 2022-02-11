class ItemInputs
  def self.item_inputs
    puts
    puts 'Insert your item properties'
    puts
    print 'Title: '
    item_name = gets.chomp
    print 'Genre: '
    item_genre = gets.chomp
    print 'Author first name: '
    item_author_first = gets.chomp
    print 'Author last name: '
    item_author_last = gets.chomp
    print 'Label title: '
    item_label_title = gets.chomp
    print 'Label color: '
    item_label_color = gets.chomp
    print 'Publish date format(YY/MM/DD): '
    item_date = gets.chomp

    [item_name, item_genre, item_author_first, item_author_last, item_label_title, item_label_color, item_date]
  end
end
