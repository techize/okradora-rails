class AddOwnerReferenceToTasks < ActiveRecord::Migration[6.1]
  def change
    add_reference :tasks, :owner, null: false, foreign_key: { to_table: :users }
      
    add_reference :tasks, :group, null: false, foreign_key: { to_table: :groups }
    add_reference :tasks, :tenant, null: false, foreign_key: { to_table: :tenants }
    add_reference :tasks, :project, null: false, foreign_key: { to_table: :projects }
  end
end
