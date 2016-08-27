class CreateWalks < ActiveRecord::Migration
  def change
    create_table :walks do |t|
      t.references :user, index: true
      t.references :organism, index: true

      t.timestamps null: false
    end
    add_foreign_key :walks, :users
    add_foreign_key :walks, :organisms
  end
end
