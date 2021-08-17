class CreateLabels < ActiveRecord::Migration[6.1]
  def change
    create_table :labels do |t|

      t.string :name
      t.text :notes
      t.string :colour

      t.timestamps
    end
  end
end
