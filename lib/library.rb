class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = [].flatten
    # instead of .flatten, should have created an add_books method that will shovel each book into the array (no need to flatten)
    @authors = []
  end

  def add_author(author)
    @authors << author
    @books << author.books
  end

  def publication_time_frame_for(author)
    author.publication_time_frame
  end
end
