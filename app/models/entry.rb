class Entry < ApplicationRecord
	belongs_to :user
	validates :body, length: {maximum: 140}, presence: true
	validates :title, length: {maximum: 32}, presence: true
end
