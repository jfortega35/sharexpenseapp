class User < ApplicationRecord
  has_many :receipts
  belongs_to :groups
  validates :username, presence: true,
                    length: { minimum: 5 }
                    
end
