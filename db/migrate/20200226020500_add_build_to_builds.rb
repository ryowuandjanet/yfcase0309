class AddBuildToBuilds < ActiveRecord::Migration
  def change
  	remove_column :yfcases, :buildurl
  	remove_column :yfcases, :buildarea
  	remove_column :yfcases, :buildtype
  	remove_column :yfcases, :usearea
  	remove_column :yfcases, :buildholdingpointperson
  	remove_column :yfcases, :buildholdingpointall
  	add_column :builds, :buildurl, :string
  	add_column :builds, :buildarea, :decimal,precision: 6, scale: 2
  	add_column :builds, :buildholdingpointperson, :string
  	add_column :builds, :buildholdingpointall, :string
  	add_column :builds, :buildtype, :string
  	add_column :builds, :usearea, :string
  end
end
