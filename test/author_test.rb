require 'minitest/autorun'
require 'minitest/pride'
require './lib/book'
require './lib/author'

class AuthorTest < MiniTest::Test
  def setup
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  def test_it_exists
    assert_instance_of Author, @charlotte_bronte
  end

  def test_it_has_readable_attributes
    assert_equal "Charlotte Bronte", @charlotte_bronte.name
  end

  def test_it_can_write_books
    # skip
    assert_equal [], @charlotte_bronte.books

    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")

    assert_equal [jane_eyre], @charlotte_bronte.books
    assert_instance_of Book, jane_eyre
    assert_equal "Jane Eyre", jane_eyre.title
    # @charlotte_bronte.write("Villette", "1853")

    # also very funky but I wasn't sure how to get 2nd book's element_id or some sort of variable name
    assert_equal [jane_eyre,@charlotte_bronte.write("Villette", "1853")],@charlotte_bronte.books

    # according to mike we can make our own variables! or do a count of books here, assert to the last title, etc. 
  end
end
