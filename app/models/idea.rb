class Idea < ApplicationRecord
	mount_uploader :picture, PictureUploader
	has_many :ratings

	def average_rating 
		avg = 0
		self.ratings.each do |rating|
			avg += rating.rating
		end
		avg/(ratings.count)
	end
end

