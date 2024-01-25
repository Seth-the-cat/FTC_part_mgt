class Manufacturer < ApplicationRecord
  has_many :parts, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
