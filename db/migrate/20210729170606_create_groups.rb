class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.references :parent_group, null: false, foreign_key: true
      t.references :tenant, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :notes

      t.timestamps
    end
  end
end
