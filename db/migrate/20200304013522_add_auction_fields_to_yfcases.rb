class AddAuctionFieldsToYfcases < ActiveRecord::Migration
  def change
  	add_column :yfcases, :auctionday1, :date
  	add_column :yfcases, :floorprice1, :integer
  	add_column :yfcases, :click1, :integer
  	add_column :yfcases, :monitor1, :integer
  	add_column :yfcases, :margin1, :integer

 	add_column :yfcases, :auctionday2, :date
  	add_column :yfcases, :floorprice2, :integer
  	add_column :yfcases, :click2, :integer
  	add_column :yfcases, :monitor2, :integer
  	add_column :yfcases, :margin2, :integer

  	add_column :yfcases, :auctionday3, :date
  	add_column :yfcases, :floorprice3, :integer
  	add_column :yfcases, :click3, :integer
  	add_column :yfcases, :monitor3, :integer
  	add_column :yfcases, :margin3, :integer
  	
  	add_column :yfcases, :auctionday4, :date
  	add_column :yfcases, :floorprice4, :integer
  	add_column :yfcases, :click4, :integer
  	add_column :yfcases, :monitor4, :integer
  	add_column :yfcases, :margin4, :integer
  end
end
