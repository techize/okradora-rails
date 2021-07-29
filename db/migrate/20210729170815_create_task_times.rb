class CreateTaskTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :task_times do |t|
      t.references :task, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.bigint :minutes
      t.text :notes

      t.timestamps
    end
  end
end
