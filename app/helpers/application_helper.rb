module ApplicationHelper
	# Returns the full title on a per-page basis.
	
	# method def, optional arg
	def full_title(page_title = '')
		# variable assignment
		base_title = "Ruby on Rails Tutorial Sample App"
		# boolean test
		if page_title.empty?
			# implicit return
			base_title
		else
			# string concatenation
			page_title + " | " + base_title
		end
	end
end
