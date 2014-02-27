class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :snippet_id
      t.integer :user_id
      t.float :amount
      t.string :status
      t.float :usd_amount
      t.string :coinbase_id
      t.string :coinbase_code
      t.text :error

      t.timestamps
    end
  end
end
