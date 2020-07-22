class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = [].flatten
    @authors = []
  end

  def add_author(author)
    @authors << author
    @books << author.books
  end
end
