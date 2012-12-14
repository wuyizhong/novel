class HomeController < ApplicationController
	def register
		@user = User.new
	end

end
