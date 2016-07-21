class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.date :from_date
      t.date :to_date
      t.date :exipry_date
      t.float :amount
      t.string :payment_mode
      t.boolean :is_paid
      t.float :paid_amount
      t.references :resident, foreign_key: true

      t.timestamps
    end
  end
end
