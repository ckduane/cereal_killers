require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  product = Product.create(name: 'Fruity Pebbles')

  test "should not save review without comment" do
    review = Review.new

    review.product_id = product.id
    review.rating = 1

    assert_not review.save, "Saved review without a comment"
  end

  test "should not save review without rating" do
    review = Review.new

    review.product_id = product.id
    review.comment = 'Test for fruity pebbles comment'

    assert_not review.save, "Saved review without a rating"
  end

end