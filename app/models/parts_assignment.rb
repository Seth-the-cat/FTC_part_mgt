class PartsAssignment < ApplicationRecord
  belongs_to :part
  belongs_to :project
end
