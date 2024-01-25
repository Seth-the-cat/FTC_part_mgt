class Part < ApplicationRecord
  belongs_to :manufacturer
  validates :manufacturer_name, :number, :quantity, :manufacturer_id, :description, presence: true
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }

  has_and_belongs_to_many :project, join_table: "parts_projects", dependent: :destroy
end
