class CreateInitiatives < ActiveRecord::Migration[6.1]
  def change
    create_table :initiatives do |t|
      t.integer :status
      t.text :editors
      t.text :viewers
      t.text :notes

      t.timestamps
    end
  end
end
