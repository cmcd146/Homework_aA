class CreateHousesTable < ActiveRecord::Migration[5.2]
  def up
    create_table :houses do |t|
        t.string :address, null: false
        t.timestamps
    end
  end

  def down
    drop_table :houses
  end
end
