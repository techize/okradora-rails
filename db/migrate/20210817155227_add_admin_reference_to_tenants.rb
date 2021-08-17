class AddAdminReferenceToTenants < ActiveRecord::Migration[6.1]
  def change
    add_reference :tenants, :user, null: false, foreign_key: true
    add_reference :tenants, :admin, null: false, foreign_key: { to_table: :users }
    add_reference :tenants, :billing, null: false, foreign_key: { to_table: :users }
    add_reference :tenants, :tech, null: false, foreign_key: { to_table: :users }
    add_reference :tenants, :mainsite, null: false, foreign_key: { to_table: :locations }
  end
end
