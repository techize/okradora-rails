class CreateTaskTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :task_times do |t|
      t.references :task, null: false, foreign_key: {to_table: tasks}
      t.references :user, null: false, foreign_key: {to_table: user }
      t.bigint :minutes
      t.text :notes

      t.timestamps
    end
  end
end
