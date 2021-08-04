class CreateLabels < ActiveRecord::Migration[6.1]
  def change
    create_table :labels do |t|
      t.references :group, null: false, foreign_key: {to_table: groups }
      t.references :tenant, null: false, foreign_key: { to_table: tenants }
      t.references :owner, null: false, foreign_key: { to_table: users }
      t.string :name
      t.text :notes
      t.string :colour

      t.timestamps
    end
  end
end
