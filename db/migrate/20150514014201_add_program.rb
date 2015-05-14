class AddProgram < ActiveRecord::Migration
  def change
    add_column :sign_ups, :program, :string
  end
end
