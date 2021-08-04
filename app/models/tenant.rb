class Tenant < ApplicationRecord
  belongs_to :admin
  belongs_to :billing
  belongs_to :tech
  belongs_to :mainsite
end
