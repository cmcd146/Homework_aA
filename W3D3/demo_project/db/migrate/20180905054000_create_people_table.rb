class CreatePeopleTable < ActiveRecord::Migration[5.2]
  def up
    create_table :people do |t|
        t.string :name, null: false
        t.integer :house_id, null: false
        t.timestamps
    end
  end
  def down
    drop_table :people
  end
end
