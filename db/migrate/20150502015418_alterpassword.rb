class Alterpassword < ActiveRecord::Migration
  def up
    rename_column("sign_ups", "password", "password_digest")
  end

  def down
    rename_column("sign_ups", "password_digest", "password")
  end
end
