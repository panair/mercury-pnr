class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.integer :id
      t.string :name
      t.string :email
      t.text :address

      t.timestamps
    end
  end
end
