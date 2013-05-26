Then(/^there should be title "(.*?)"$/) do |text|
  page.should have_selector("title", text: text)
end

Then(/^there should be "(.*?)"$/) do |text|
	should have_content(text)
end



#///// Routing ///////

Given(/^I am on the "(.*?)" page$/) do |method|
  visit (send(method))
end

Given(/^I am on the "(.*?)" page with param "(.*?)"$/) do |method, param|   
  visit (send(method, param))
end                                                                      