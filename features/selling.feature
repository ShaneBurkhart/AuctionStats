Feature: What's Selling page checks
In Order to see what's selling
As a user
I Want to display a "What's Selling" page

	Scenario: Check for title
	Given I am on the "selling_path" page
	Then there should be title "Day | What's Selling | Ebay Analytics | AuctionStats.it"

	Scenario: Check for title day
	Given I am on the "selling_path" page with param "day"
	Then there should be title "Day | What's Selling | Ebay Analytics | AuctionStats.it"

	Scenario: Check for title week
	Given I am on the "selling_path" page with param "week"
	Then there should be title "Week | What's Selling | Ebay Analytics | AuctionStats.it"

	Scenario: Check for title month
	Given I am on the "selling_path" page with param "month"
	Then there should be title "Month | What's Selling | Ebay Analytics | AuctionStats.it"

	Scenario: There are categories listing top selling in Day
	Given there is a category called "Books"
	And category "Books" is selling at "55.5" percent this "Day"
	And there is a category called "Electronics"
	And category "Electronics" is selling at "12.7" percent this "Day"
	When I am on the "selling_path" page
	Then there should be "Books"
	And there should be "55.5%"
	And there should be "Electronics"
	And there should be "12.7%"