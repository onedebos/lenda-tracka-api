class Lendee < ApplicationRecord
  belongs_to :lender
  validates :name, presence: true
end
