class CreateOrganisms < ActiveRecord::Migration
  def change
    create_table :organisms do |t|
      
      t.string :species

      t.string :group

      t.string :location

      t.timestamps null: false
    end
  end
end
