class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, acceptance: { accept: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
  validates :name, :address, :category, presence: true
end
