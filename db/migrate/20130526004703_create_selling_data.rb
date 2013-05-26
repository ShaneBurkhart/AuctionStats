class CreateSellingData < ActiveRecord::Migration
  def change
    create_table :selling_data do |t|
      t.integer :category_id
      t.decimal :percent_of_category
      t.decimal :percent_of_overall
      t.decimal :average_price

      t.timestamps
    end
  end
end
