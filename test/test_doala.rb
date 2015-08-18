require 'minitest/autorun'
require 'doala'

class DoalaTest < Minitest::Test
  def test_face
    assert_equal '(⌒(´・△・`)⌒)', Doala.face
  end

  def test_business_friend
    assert_equal 'つば九郎', Doala.business_friend
  end

  def test_move
    counter = 0
    Doala.move(4) do |s|
      if counter.even?
        assert_equal "\r" + " " * counter + "(⌒(´・△・`)⌒)", s
      else
        assert_equal "\r" + " " * counter + "(‿(,・▽・,)‿)", s
      end
      counter += 1
    end
  end

  def test_height
    assert_equal 'アジアの頂点 cm', Doala.height
  end

  def test_weight
    assert_equal '圧倒的な存在感 kg', Doala.weight
  end
end
