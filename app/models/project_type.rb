class ProjectType < ApplicationRecord
  has_many :projects, dependent: :destroy

  validates :project_type_name, presence: true, uniqueness: true
end
