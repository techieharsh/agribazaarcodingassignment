class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :phone_no
      t.string :line
      t.string :street
      t.string :city
      t.string :state
      t.integer :pin_code
      t.integer :user_id

      t.timestamps
    end
  end
end
