require 'minitest/autorun'
require 'minitest/pride'
require './lib/library'
require './lib/author'

class LibraryTest < MiniTest::Test
  def setup
    @dpl = Library.new("Denver Public Library")
  end

  def test_it_exists
    assert_instance_of Library, @dpl
  end

  def test_it_has_readable_attributes
    assert_equal "Denver Public Library", @dpl.name
    assert_equal [], @dpl.books
    assert_equal [], @dpl.authors
  end
end
