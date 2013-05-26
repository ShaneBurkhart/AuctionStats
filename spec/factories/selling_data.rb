# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :selling_datum, :class => 'SellingData' do
    category_id 1
    percent_of_category "9.99"
    percent_of_overall "9.99"
    average_price "9.99"
  end
end
