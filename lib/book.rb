class Book
  attr_reader :title, :author, :publication_year

  def initialize(attributes = {})
    @author = "#{attributes[:author_first_name]} #{attributes[:author_last_name]}"
    @title = attributes[:title]
    @publication_year = attributes[:publication_date][-4..-1]
    # .split(" ").last would have been better 
  end

  def self.create_book(first_name, last_name, title, publication_date)
    Book.new({author_first_name: first_name, author_last_name: last_name, title: title, publication_date: publication_date})
  end
end
