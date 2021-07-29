class CreatePermissions < ActiveRecord::Migration[6.1]
  def change
    create_table :permissions do |t|
      t.string :name
      t.blob :value
      t.references :created_by, null: false, foreign_key: true
      t.references :updated_by, null: false, foreign_key: true

      t.timestamps
    end
  end
end
