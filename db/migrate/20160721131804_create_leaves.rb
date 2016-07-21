class CreateLeaves < ActiveRecord::Migration[5.0]
  def change
    create_table :leaves do |t|
      t.date :start_date
      t.date :end_date
      t.string :destination
      t.references :resident, foreign_key: true

      t.timestamps
    end
  end
end
