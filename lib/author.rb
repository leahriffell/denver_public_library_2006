require './lib/book'

class Author
  attr_reader :first_name, :last_name, :name, :books

  def initialize(attributes = {})
  # don't have to do this syntax. Can just do attributes withouth = {}
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    # after IC review, name should be a method not an attribute 
    @name = "#{attributes[:first_name]} #{attributes[:last_name]}"
    @books = []
  end

  def write(title, publication_date)
    @books << Book.create_book(first_name, last_name, title, publication_date)

    # so funky but I couldn't figure out how to return book object instead of @books array
    # @books.find {|book| book.title == title}
    @books.last
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
