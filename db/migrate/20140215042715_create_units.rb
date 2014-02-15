class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string  :address
      t.string  :unit_type
      t.integer :number_of_washroom
      t.string  :descriptions
      t.float   :latitude
      t.float   :longitude

      t.timestamps
    end
  end
end
