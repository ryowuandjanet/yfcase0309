class AddCountryIdAndStateIdToYfcases < ActiveRecord::Migration
  def change
    add_column :yfcases, :county_id, :integer
    add_index :yfcases, :county_id
    add_column :yfcases, :township_id, :integer
    add_index :yfcases, :township_id
  end
end
