class StaticsController < ApplicationController
  def home
  end

  def selling
  	@time = time_data params[:time]
  	@title = time_title(@time)
  	@data = SellingData.where("time = ?", @time).order("percent_of_category DESC")
  	@top = @data.length > 4 ? @data[0..4] : @data
  end

  def about
  end

  private

  	def time_data(time)
			if (time.nil? || (time.to_s.downcase != 'week' && time.to_s.downcase != 'month'))
	  		return 'day'
	  	else
	  		return time.downcase
	  	end
  	end

	  def time_title(time)
	  	if time.nil?
	  		return "Day | What\'s Selling".html_safe
	  	elsif time.to_s.downcase == 'month'
	  		return "Month | What\'s Selling".html_safe
	  	elsif time.to_s.downcase == 'week'
	  		return "Week | What\'s Selling".html_safe
	  	else
	  		return "Day | What\'s Selling".html_safe
	  	end
	  end

end
