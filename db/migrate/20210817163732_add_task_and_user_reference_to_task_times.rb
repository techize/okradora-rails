class AddTaskAndUserReferenceToTaskTimes < ActiveRecord::Migration[6.1]
  def change
    add_reference :task_times, :task, null: false, foreign_key: {to_table: :tasks}
    add_reference :task_times, :user, null: false, foreign_key: {to_table: :users }

  end
end
