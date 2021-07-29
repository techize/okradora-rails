class Label < ApplicationRecord
  belongs_to :group
  belongs_to :tenant
  belongs_to :owner
end
