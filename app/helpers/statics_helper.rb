module StaticsHelper

	def btn_active(time, btn)
		return time.downcase != btn.downcase ? "btn-inverse" : "btn-primary"
	end

end
