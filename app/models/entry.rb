class Entry < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :destroy
	default_scope -> { order(created_at: :desc) }
	validates :body, length: {maximum: 140}, presence: true
	validates :title, length: {maximum: 32}, presence: true
	validates :user_id, presence: true
    validates :body, presence: true, length: { maximum: 140 }
end
