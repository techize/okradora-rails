class CreateTaskTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :task_times do |t|

      t.text :notes
      t.bigint :minutes
      t.timestamps
    end
  end
end
