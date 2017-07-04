class CreateUserAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :user_addresses do |t|
      t.references :user, foreign_key: true
      t.string    :door_no
      t.string    :street
      t.string    :city
      t.string    :state
      t.string    :pincode
      t.timestamps
    end
  end
end
