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

require 'spec_helper'

describe SellingData do
  pending "add some examples to (or delete) #{__FILE__}"
end
