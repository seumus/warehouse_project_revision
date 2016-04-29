require 'minitest/autorun'
require_relative '../warehouse_picker_functions.rb'

class TestWarehouse < Minitest::Test

  def test_item_at_bay
    item = item_at_bay('b5')
    assert_equal('nail filer', item)
  end

  def test_bay_at_item
    bay = bay_at_item('nail filer')
    assert_equal('b5', bay)
  end

  def test_items_in_bays
    items = items_in_bays(['b5', 'b10', 'b6'])
    assert_equal(['nail filer', 'cookie jar', 'tooth paste'], items)
  end

  def test_bays_at_items
    bays = bays_at_items(['rusty nail', 'shoe lace', 'leg warmers'])
    assert_equal(['c1', 'c9', 'c10'], bays)
  end

  def test_distance_between_bays
    items = distance_between_bays(["b5", "b10","b6"])
    assert_equal(5, items)
    items = distance_between_bays(["b3", "c7","c9","a3"])
    assert_equal(15, items)
  end

  def test_collection_order
    items = collection_order(["shoe lace","rusty nail","leg warmers"])
    assert_equal(["c1", "c9", "c10"], items)
    items = collection_order(["hanger","deodorant","candy wrapper", "rubber band"])
    assert_equal(["a10","a4","c8","b9"], items)
  end
end
