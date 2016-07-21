class CreateResidents < ActiveRecord::Migration[5.0]
  def change
    create_table :residents do |t|
      t.string :room_number
      t.string :roll_number
      t.string :name
      t.references :hostel, foreign_key: true

      t.timestamps
    end
  end
end
