class AddCountryIdAndStateIdToNumber < ActiveRecord::Migration
  def change
    add_column :yfcases, :country_id, :integer
    add_index :yfcases, :country_id
    add_column :yfcases, :state_id, :integer
    add_index :yfcases, :state_id
  end
end
