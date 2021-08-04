class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.blob :details
      t.references :owner, null: false, foreign_key: {to_table: user }
      t.integer :status
      t.text :editors
      t.text :viewers

      t.timestamps
    end
  end
end
