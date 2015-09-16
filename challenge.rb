#https://github.com/masonfmatthews/rails_assignments/blob/master/challenges/string_split_challenge.rb

require 'minitest/autorun'
require 'minitest/pride'

# Write two methods:

#   * `first_name`: given a name in string, return the first name.
#   * `last_name`: given a name in string, return the last name.

# WRITE YOUR CODE HERE.
def first_name(name)
  array = name.to_s.split
  return name.to_s if array.length < 2
  array[0..-2].join(" ")
end

def last_name(name)
  array = name.to_s.split
  return "" if array.length < 2
  array[-1]
end


class StringSplitChallenge < MiniTest::Test
  def test_first_name
    assert_equal "Mason", first_name("Mason Matthews")
  end

  def test_last_name
    assert_equal "Matthews", last_name("Mason Matthews")
  end

  def test_one_word_name
    assert_equal "deadmou5", first_name("deadmou5")
    assert_equal "", last_name("deadmou5")
  end

  def test_three_word_name
    assert_equal "John Quincy", first_name("John Quincy Adams")
    assert_equal "Adams", last_name("John Quincy Adams")
  end

  def test_no_word_name
    assert_equal "", first_name("")
    assert_equal "", last_name("")
  end

  def test_nil_name
    assert_equal "", first_name(nil)
    assert_equal "", last_name(nil)
  end
end
