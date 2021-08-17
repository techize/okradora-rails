class AddUserReferenceToTodoItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :todo_items, :owner, null: false, foreign_key: { to_table: :users }
  end
end
