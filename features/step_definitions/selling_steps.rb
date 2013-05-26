Given(/^there is a category called "(.*?)"$/) do |category|
  Category.new(name: category).save
end

Given(/^category "(.*?)" is selling at "(.*?)" percent this "(.*?)"$/) do |category, percent, time|
	SellingData.new(category_id: Category.find_by_name(category).id, percent_of_category: percent, 
		 								percent_of_overall: 10.2, average_price: 15.87, time: time.downcase).save
end