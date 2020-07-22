require './lib/book'

class Author
  attr_reader :first_name, :last_name, :name, :books

  def initialize(attributes = {})
    @first_name = "#{attributes[:first_name]}"
    @last_name = "#{attributes[:last_name]}"
    @name = "#{attributes[:first_name]} #{attributes[:last_name]}"
    @books = []
  end

  def write(title, publication_date)
    author_first_name = @first_name
    author_last_name = @last_name
    @books << Book.create_book(first_name, last_name, title, publication_date)

    # so funky but I couldn't figure out how to return book object instead of @books array
    @books.find {|book| book.title == title}
  end

  def publication_time_frame
    # could be helper methods
    newest = @books.max_by do |book|
      book.publication_year
    end

    oldest = @books.min_by do |book|
      book.publication_year
    end

    {start: oldest.publication_year, end: newest.publication_year}
  end
end
