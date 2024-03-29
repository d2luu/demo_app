class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :entry
  default_scope -> { order(created_at: :desc) }
  validates :content, presence: true
end
