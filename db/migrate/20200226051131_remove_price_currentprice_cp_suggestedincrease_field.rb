class RemovePriceCurrentpriceCpSuggestedincreaseField < ActiveRecord::Migration
  def change
  	remove_column :yfcases,:price
  	remove_column :yfcases,:currentprice
  	remove_column :yfcases,:cp
  	remove_column :yfcases,:suggestedincrease
  end
end
