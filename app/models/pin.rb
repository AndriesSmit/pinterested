class Pin < ApplicationRecord
	#belongs_to :user
	belongs_to :user, :optional => true
end
