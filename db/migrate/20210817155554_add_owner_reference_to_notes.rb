class AddOwnerReferenceToNotes < ActiveRecord::Migration[6.1]
  def change
    add_reference :notes, :owner, null: false, foreign_key: { to_table: :users }
  end
end
