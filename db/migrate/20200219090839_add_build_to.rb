class AddBuildTo < ActiveRecord::Migration
  def change
  	add_column :yfcases, :buildurl, :string
  	add_column :yfcases, :buildarea, :decimal,precision: 6, scale: 2
  	add_column :yfcases, :buildholdingpoint, :string
  	add_column :yfcases, :buildtype, :string
  	add_column :yfcases, :usearea, :string
  end
end
