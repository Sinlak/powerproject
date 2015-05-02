class UniqueEmail < ActiveRecord::Migration
  def change
    add_index :sign_ups, :email, unique:true
  end
end
