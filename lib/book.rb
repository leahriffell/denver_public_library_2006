class Book
  attr_reader :title, :author, :publication_year

  def initialize(attributes = {})
    @author = "#{attributes[:author_first_name]} #{attributes[:author_last_name]}"
    @title = attributes[:title]
    @publication_year = attributes[:publication_date][-4..-1]
  end
end
