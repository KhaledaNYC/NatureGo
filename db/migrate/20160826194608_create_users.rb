class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      
      t.string :name

      t.string :username

      t.string :password_digest

      t.string :location

      t.string :interest

      t.integer :nature_lover_level

      t.timestamps null: false
    end
  end
end
