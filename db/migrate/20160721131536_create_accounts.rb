class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.integer :fine
      t.integer :leaves
      t.string :last_month_adjustment
      t.references :resident, foreign_key: true

      t.timestamps
    end
  end
end
