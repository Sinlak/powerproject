class AddProgram < ActiveRecord::Migration
  def change
    add_column :set_lifts, :program, :string
  end
end
