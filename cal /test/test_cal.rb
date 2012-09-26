require 'test/unit'


class Month < Test::Unit::TestCase

  def test_01_item_stores_payload
    lli = LinkedListItem.new("foo")
    assert_equal("foo", lli.payload)
  end
 end