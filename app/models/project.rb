class Project < ApplicationRecord
  belongs_to :part
  # has_many_and_belongs_to :parts
  belongs_to :project_type
end
