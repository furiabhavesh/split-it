class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :event_id
      t.integer :user_id
      t.float :supposed_to_give_amount
      t.float :given_amount
      t.float :balance_amount

      t.timestamps
    end
  end
end
