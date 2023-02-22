class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian].freeze
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates_inclusion_of :category, in: CATEGORIES
end
