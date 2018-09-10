class Group < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :receipts, through: :users
  validates :name, presence: true,
                    length: { minimum: 5 }
end
