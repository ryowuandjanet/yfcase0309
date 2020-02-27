class RetypeRegisteredmarketpriceToTextfield < ActiveRecord::Migration
  def change
  	change_column :yfcases, :registeredmarketprice, :text
  end
end
