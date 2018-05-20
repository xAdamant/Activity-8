class CreateSeatclasses < ActiveRecord::Migration[5.2]
  def change
    create_table :seatclasses do |t|
      t.string :class_name
      t.decimal :price
      t.boolean :food_sertvice
      t.string :seat_type
      t.integer :leg_room

      t.timestamps
    end
  end
end
