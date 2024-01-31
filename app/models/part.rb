class Part < ApplicationRecord
  belongs_to :manufacturer
  validates :manufacturer_name, :number, :quantity, :manufacturer_id, :description, presence: true
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }

  has_one :project, through: :parts_assignments #, dependent: :destroy
end
