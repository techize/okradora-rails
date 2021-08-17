class AddTenantReferenceToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :tenant, null: false, foreign_key: true
    add_reference :users, :location, null: false, foreign_key: true
  end
end
