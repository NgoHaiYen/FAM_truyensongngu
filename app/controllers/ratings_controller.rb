class RatingsController < ApplicationController
	def create
		@rating = Rating.new(rating_params)
		if @rating.save
			redirect_to(:back)
		else redirect_to(:back)
		end

	end
	private
	def rating_params
		params.require(:rating).permit(:rate,:truyen_id,:user_id)
	end
end
