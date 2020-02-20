class ModifyHoldingpointToYfcase < ActiveRecord::Migration
  def change
	remove_column :yfcases, :landholdingpoint
	remove_column :yfcases, :buildholdingpoint
	add_column :yfcases, :landholdingpointperson, :integer
	add_column :yfcases, :landholdingpointall, :integer
	add_column :yfcases, :buildholdingpointperson, :integer
	add_column :yfcases, :buildholdingpointall, :integer
  end
end
