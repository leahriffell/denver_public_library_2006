class Author
  attr_reader :first_name, :last_name, :name, :books

  def initialize(attributes = {})
    @first_name = "#{attributes[:first_name]}"
    @last_name = "#{attributes[:last_name]}"
    @name = "#{attributes[:first_name]} #{attributes[:last_name]}"
    @books = []
  end

  def write(title, publication_date)
    @books << Book.new({author_first_name: @first_name, author_last_name: @last_name, title: title, publication_date: publication_date})
  end
end