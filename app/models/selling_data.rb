# == Schema Information
#
# Table name: selling_data
#
#  id                  :integer          not null, primary key
#  category_id         :integer
#  percent_of_category :decimal(, )
#  percent_of_overall  :decimal(, )
#  average_price       :decimal(, )
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  time                :string(255)
#

class SellingData < ActiveRecord::Base
  attr_accessible :average_price, :category_id, :percent_of_category, 
  				:percent_of_overall, :time

	belongs_to :category

  validates :category_id, :percent_of_category, :percent_of_overall, :average_price, :time, presence: true
end
