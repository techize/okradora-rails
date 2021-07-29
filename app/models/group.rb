class Group < ApplicationRecord
  belongs_to :parent_group
  belongs_to :tenant
  belongs_to :user
end
