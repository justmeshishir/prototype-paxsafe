class CreateApartments < ActiveRecord::Migration[5.0]
  def change
    create_table :apartments do |t|
    	t.string :name
    	t.integer :rate
    	t.string :address
    	t.text :description
      t.timestamps
    end
  end
end
