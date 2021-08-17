class AddCreatedAndUpdatedUserReferenceToPermissions < ActiveRecord::Migration[6.1]
  def change
    add_reference :permissions, :created_by, null: false, foreign_key: {to_table: :users }
    add_reference :permissions, :updated_by, null: false, foreign_key: {to_table: :users }
  end
end
