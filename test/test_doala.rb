require 'minitest/autorun'
require 'doala'

class DoalaTest < Minitest::Test
  def test_face
    assert_equal '(⌒(´・△・`)⌒)', Doala.face
  end

  def test_business_friend
    assert_equal 'つば九郎', Doala.business_friend
  end
end
