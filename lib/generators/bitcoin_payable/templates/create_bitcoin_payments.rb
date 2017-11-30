class CreateBitcoinPayments < ActiveRecord::Migration[5.1]
  def change
    create_table :bitcoin_payments do |t|
      t.string   :payable_type
      t.integer  :payable_id
      t.integer  :user_id
      t.string   :currency
      t.string   :reason
      t.integer  :price
      t.float    :btc_amount_due, default: 0
      t.string   :address
      t.string   :state, default: 'pending'
      t.datetime :created_at
      t.datetime :updated_at
    end
    add_index :bitcoin_payments, [:payable_type, :payable_id]
  end
end
