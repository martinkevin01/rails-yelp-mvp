class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
  validates :phone_number, format: { with: /\d[0-9]\)*\z/, message: 'only number without spaces are allowed' }
end
