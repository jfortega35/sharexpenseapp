class Group < ApplicationRecord
  has_many :users
  validates :name, presence: true,
                    length: { minimum: 5 }
end
