require 'test_helper'

class ItemTest < ActiveSupport::TestCase

  test "it has a name" do
    assert Item.new(name: 'Test Name').name
  end

end
