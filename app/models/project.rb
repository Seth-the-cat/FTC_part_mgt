class Project < ApplicationRecord
  
  has_many :parts_assignments
  has_many :parts, through: :parts_assignments
  belongs_to :project_type

  validates :project_name, presence: true, uniqueness: true
  validates :description, presence: true
end
