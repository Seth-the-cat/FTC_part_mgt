class Project < ApplicationRecord
  has_and_belongs_to_many :parts
  belongs_to :project_type

  validates :project_name, presence: true, uniqueness: true
  validates :description, presence: true
end
