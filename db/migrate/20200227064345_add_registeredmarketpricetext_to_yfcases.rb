class AddRegisteredmarketpricetextToYfcases < ActiveRecord::Migration
  def change
  	add_column :yfcases, :registeredmarketpricetext, :string
  end
end
