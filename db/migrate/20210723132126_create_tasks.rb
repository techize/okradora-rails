class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :priority
      t.integer :status
      t.text :notes
      t.integer :visibility
      t.timestamp :received_date
      t.timestamp :start_date
      t.timestamp :due_date
      t.timestamp :end_date
      t.integer :parent_task
      t.text :labels
      t.timestamps
    end
  end
end
