class User < ApplicationRecord
  belongs_to :group
  has_many :receipts, dependent: :destroy
  validates :username, presence: true,
                    length: { minimum: 5 }
                    
end
