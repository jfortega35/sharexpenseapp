class Receipt < ApplicationRecord
  has_one :user
  has_one :group, through: :user
  validates :title, presence: true,
                    length: { minimum: 5 }
end
