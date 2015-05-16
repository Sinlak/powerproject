class LiftsSet < ActiveRecord::Migration
  def change
    add_column :sign_ups, :lifts_set, :boolean, :default => false
  end
end
