class User < ApplicationRecord
	has_many :entries
	validates :name, presence: true    
    validates :email, presence: true    
end
