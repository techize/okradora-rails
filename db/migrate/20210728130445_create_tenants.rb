class CreateTenants < ActiveRecord::Migration[6.1]
  def change
    create_table :tenants do |t|
      t.string :company_name
      t.references :admin, null: false, foreign_key: { to_table: user }
      t.references :billing, null: false, foreign_key: { to_table: user }
      t.references :tech, null: false, foreign_key: { to_table: user }
      t.references :mainsite, null: false, foreign_key: { to_table: location }

      t.timestamps
    end
  end
end
