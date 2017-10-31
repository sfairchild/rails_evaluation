require 'test_helper'

class ListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @list = List.new(name: 'Samsung List', description: 'list of Samsung gadgets');
  end

  test 'valid list' do
    assert @list.valid?
  end

  test 'invalid without name' do
    @list.name = nil
    refute @list.valid?, 'saved user without a name'
    assert_not_nil @list.errors[:name], 'no validation error for name present'
  end

  test 'invalid without description' do
    @list.description = nil
    refute @list.valid?
    assert_not_nil @list.errors[:description]
  end

end
