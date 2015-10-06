class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.references :parent, index: true
      t.string :title, null: false
      t.timestamps null: false
    end
    add_foreign_key :groups, :groups, column: :parent_id
  end
end
