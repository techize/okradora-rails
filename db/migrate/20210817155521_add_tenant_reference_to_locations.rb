class AddTenantReferenceToLocations < ActiveRecord::Migration[6.1]
  def change
    add_reference :locations, :tenant, null: false, foreign_key: { to_table: :tenants }
  end
end
