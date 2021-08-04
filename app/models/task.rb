class Task < ApplicationRecord
  belongs_to :owner
  belongs_to :group
  belongs_to :tenant
  belongs_to :project
end
