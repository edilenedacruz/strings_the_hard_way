require_relative 'test_helper'
require_relative '../lib/hard_strings'

class HardStringTest < Minitest::Test
  def test_it_can_determine_length
    string = HardString.new
    assert_equal 5, string.length("pizza")
  end

  def test_it_can_determine_length
    string = HardString.new
    assert_equal 45, string.length("pneumonoultramicroscopicsilicovolcanoconiosis")
  end

  def test_it_can_capitalize_string
    string = HardString.new
    assert_equal "PIZZA", string.upcase("pizza")
  end

  def test_it_can_sub_a_character
    string = HardString.new
    assert_equal "fog", string.sub("dog", "d", "f")
  end

  def test_it_can_sub_a_character_another_word
    string = HardString.new
    assert_equal "fud", string.sub("dud", "d", "f")
  end

  def test_it_can_replace_globally
    string = HardString.new
    assert_equal "fuf", string.gsub("dud", "d", "f")
  end

  def test_it_can_split_at_white_spaces
    string = HardString.new
    assert_equal ["Hello", "Dear", "Friends"], string.split("Hello Dear Friends")
  end

  def test_it_can_split_at_determined_argument
    string = HardString.new
    assert_equal ["one", "two", "three"], string.split_with_arg("one,two,three", ",")
  end

  def test_it_can_return_letters_by_index
    string = HardString.new
    assert_equal "za", string.substring("pizza", 3, 4)
    assert_equal "izza", string.substring("pizza", 1,4)
  end
end
