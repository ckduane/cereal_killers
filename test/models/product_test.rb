require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "should not save product without name" do
    product = Product.new
    assert_not product.save, "Saved product without a name"
  end
end
