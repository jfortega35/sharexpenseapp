class User < ApplicationRecord
  belongs_to :group
  validates :username, presence: true,
                    length: { minimum: 5 }
                    
end
