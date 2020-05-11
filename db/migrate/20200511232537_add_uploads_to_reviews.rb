class AddUploadsToReviews < ActiveRecord::Migration[6.0]
  def change
  	add_column :reviews, :uploads, :file
  end
end
