class Lender < ApplicationRecord
  has_many :lendees
  validates :email, presence:true, uniqueness: true
end
