class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :notes
      t.text :details

      t.text :editors
      t.text :viewers

      t.timestamps
    end
  end
end
