require 'test_helper'
#require 'mini_test_practice'

class MiniTestPracticeTest < Minitest::Test
  def setup
    @main = ::MiniTestPractice::Main.new
  end
  
  def test_that_it_has_a_version_number
    refute_nil ::MiniTestPractice::VERSION
  end

  def test_odd?
    assert_equal false, @main.odd?(-10000), '10000 is not odd'
    assert_equal false, @main.odd?(-2), '0 is not odd'
    assert_equal true,  @main.odd?(-1), '0 is not odd'
    assert_equal false, @main.odd?(0),  '0 is not odd'
    assert_equal true,  @main.odd?(1),  '1 is odd'
    assert_equal false, @main.odd?(2),  '2 is not odd'
    assert_equal false, @main.odd?(10000), '10000 is not odd'
  end

  def test_even?
    assert_equal true,  @main.even?(-10000), '10000 is even'
    assert_equal true,  @main.even?(-2), '-2 is even'
    assert_equal false, @main.even?(-1), '-1 is not even'
    assert_equal true,  @main.even?(0),  '0 is even'
    assert_equal false, @main.even?(1),  '1 is not even'
    assert_equal true,  @main.even?(2),  '2 is even'
    assert_equal true,  @main.even?(10000), '10000 is even'
  end
end
