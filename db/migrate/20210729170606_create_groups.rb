class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.references :parent_group, null: false, foreign_key: { to_table: groups }
      t.references :tenant, null: false, foreign_key: { to_table: tenants }
      t.references :owner, null: false, foreign_key: {to_table: user }
      t.string :name
      t.text :notes

      t.timestamps
    end
  end
end
