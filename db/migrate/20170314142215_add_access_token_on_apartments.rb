class AddAccessTokenOnApartments < ActiveRecord::Migration[5.0]
  def change
  	add_column :apartments, :access_token, :string
  end
end
