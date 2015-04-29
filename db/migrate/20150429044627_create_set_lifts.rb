class CreateSetLifts < ActiveRecord::Migration
  def up
    create_table :set_lifts do |t|
      t.integer "sign_up_id", :null => false
      t.integer "Squat"
      t.integer "Dead"
      t.integer "Bench"
      t.integer "OHP"
      t.timestamps
    end
    add_index("set_lifts", "sign_up_id")
  end

  def down
    drop_table :set_lifts
  end
end
