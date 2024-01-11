class Grant < ApplicationRecord
  belongs_to :right
  belongs_to :role
end
