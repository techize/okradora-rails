class AddTenantAndOwnerReferenceToLabels < ActiveRecord::Migration[6.1]
  def change
    add_reference :labels, :group,  null: false, foreign_key: { to_table: :groups }
    add_reference :labels, :tenant, null: false, foreign_key: { to_table: :tenants }
    add_reference :labels, :owner,  null: false, foreign_key: { to_table: :users }
  end
end
