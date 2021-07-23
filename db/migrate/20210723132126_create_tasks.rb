class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.references :owner, null: false, foreign_key: { to_table: user }
      t.integer :priority
      t.integer :status
      t.text :notes
      t.integer :visibility
      t.references :group, null: false, foreign_key: true
      t.timestamp :received_date
      t.timestamp :start_date
      t.timestamp :due_date
      t.timestamp :end_date
      t.integer :parent_task
      t.text :labels
      t.references :tenant, null: false, foreign_key: { to_table: tenant }
      t.references :project, null: false, foreign_key: { to_table: project }

      t.timestamps
    end
  end
end
