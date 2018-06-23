class Tweet < ApplicationRecord
	belongs_to :tag
	belongs_to :user
	validates :text, length: { in: 1..300}
	attachment :image
end
