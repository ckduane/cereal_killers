class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :product_id, null: false
      t.integer :rating, null: false
      t.text :comment

      t.timestamps null: false
    end
  end
end
