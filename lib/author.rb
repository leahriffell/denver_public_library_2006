class Author
  def initialize(attributes = {})
    @name = "#{attributes[:first_name]} #{attributes[:last_name]}"
  end
end
