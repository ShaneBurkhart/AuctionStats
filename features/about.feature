Feature: About page checks
In Order to let people know what we are about
As a user
I Want to display a "About" page

	Scenario: Check for title
	Given I am on the "about_path" page
	Then there should be title "About | Ebay Analytics | AuctionStats.it"

	#Scenario: KickStarter link goes to kickstarter.com
	#Given I am on the "about_path" page
	#When 