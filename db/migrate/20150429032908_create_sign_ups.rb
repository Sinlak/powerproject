class CreateSignUps < ActiveRecord::Migration
  def up
    create_table :sign_ups do |t|

      t.string "first_name", :null=> false
      t.string "last_name", :null=> false
      t.string "email", :null=> false
      t.string "password"

      t.timestamps
    end
  end
  def down
    drop_table :sign_ups
  end
end
