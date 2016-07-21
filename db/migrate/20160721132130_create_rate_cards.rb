class CreateRateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :rate_cards do |t|
      t.float :daily_diet
      t.float :establishment_charge
      t.float :maintenance_charge
      t.float :staff_welfare_charge
      t.float :extra_charge
      t.references :hostel, foreign_key: true

      t.timestamps
    end
  end
end
