class AddTenantAndOwnerReferenceToGroups < ActiveRecord::Migration[6.1]
  def change
    add_reference :groups, :parent_group, null: false, foreign_key: { to_table: :groups }
    add_reference :groups, :tenant, null: false, foreign_key: { to_table: :tenants }
    add_reference :groups, :owner, null: false, foreign_key: {to_table: :users }
  end
end
