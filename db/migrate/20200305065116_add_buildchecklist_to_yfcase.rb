class AddBuildchecklistToYfcase < ActiveRecord::Migration
  def change
  	add_column :yfcases, :occupyneighbouringland, :boolean
  	add_column :yfcases, :register, :boolean
  	add_column :yfcases, :parkingspace, :boolean
  	add_column :yfcases, :managementfee, :boolean
  	add_column :yfcases, :occupy, :boolean
  	add_column :yfcases, :leak, :boolean
  	add_column :yfcases, :easyparking, :boolean
  	add_column :yfcases, :railway, :boolean
  	add_column :yfcases, :vegetablemarket, :boolean
  	add_column :yfcases, :store, :boolean
  	add_column :yfcases, :school, :boolean
  	add_column :yfcases, :park, :boolean
  	add_column :yfcases, :postoffice, :boolean
  	add_column :yfcases, :mainroad, :boolean
  	add_column :yfcases, :waterandpowerfailure, :boolean
  	add_column :yfcases, :goodvision, :boolean
  	add_column :yfcases, :buildchecklisttext, :string
  	add_column :yfcases, :buildchecklisturl, :string
  	add_column :yfcases, :buildchecklistremark, :text
  end
end
