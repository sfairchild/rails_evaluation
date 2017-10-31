require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list = lists(:main)
    @list.items = [items(:first), items(:second)]
    # @list.item
  end

  test "should create list" do
    assert_difference('Item.count') do
      post list_items_url(@list), params: { item: { name: 'New Item' }, tag_ids: ["1", "2"] }
    end

    assert_redirected_to list_url(@list)
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete list_item_url(@list, @list.items.first)
    end

    assert_redirected_to list_url(@list)
  end
end
