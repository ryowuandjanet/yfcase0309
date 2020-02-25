class AdjFieldToLand < ActiveRecord::Migration
  def change
  	remove_column :yfcases, :landurl
  	remove_column :yfcases, :landarea
  	remove_column :yfcases, :landholdingpointperson
  	remove_column :yfcases, :landholdingpointall
  	add_column :lands, :landurl, :string
  	add_column :lands, :landarea, :decimal,precision: 7, scale: 2
  	add_column :lands, :landholdingpointperson, :integer
  	add_column :lands, :landholdingpointall, :integer
  end
end
