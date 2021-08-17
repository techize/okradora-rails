class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.text :details
      t.integer :status
      t.text :editors
      t.text :viewers

      t.timestamps
    end
  end
end
