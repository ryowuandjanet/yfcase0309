class AddPriceColumnToYfcase < ActiveRecord::Migration
  def change
  	add_column :yfcases,:auctionday, :date
	add_column :yfcases,:auctionlevel, :string
	add_column :yfcases,:floorprice, :integer
	add_column :yfcases,:price, :integer
	add_column :yfcases,:currentprice, :integer
	add_column :yfcases,:cp, :decimal,precision: 4, scale: 3
	add_column :yfcases,:suggestedincrease, :integer
	add_column :yfcases,:margin, :integer
  end
end
