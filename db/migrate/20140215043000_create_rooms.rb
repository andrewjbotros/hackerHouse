class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.references  :unit, index: true
      t.integer     :price
      t.string      :bed_size

      t.timestamps
    end
  end
end
