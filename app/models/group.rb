class Group < ApplicationRecord
  has_many :users, dependent: :destroy
  validates :name, presence: true,
                    length: { minimum: 5 }
end
