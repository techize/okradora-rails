class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :notes
      t.blob :details
      t.references :owner, null: false, foreign_key: {to_table: user }
      t.text :editors
      t.text :viewers

      t.timestamps
    end
  end
end
