module ApplicationHelper

	def full_title(title)
		base_title = "Ebay Analytics | AuctionStats.it"
		if title.empty?
			return base_title
		else
			return "#{title} | #{base_title}"
		end
	end

	def nav_active(action, btn)
		return action.downcase == btn.downcase ? "class=active" : ""
	end

end
