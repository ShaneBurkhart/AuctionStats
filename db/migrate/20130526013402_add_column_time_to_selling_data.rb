class AddColumnTimeToSellingData < ActiveRecord::Migration
  def change
  	add_column :selling_data, :time, :string
  end
end
