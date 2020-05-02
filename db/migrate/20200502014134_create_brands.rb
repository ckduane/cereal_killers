class CreateBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :name, null: false, uniqueness: true

      t.timestamps null: false
    end
  end
end
