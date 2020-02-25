class AddLinkToRegister < ActiveRecord::Migration
  def change
  	 add_column :yfcases, :foreclosureannouncementlink, :string
  	 add_column :yfcases, :objectphotoslink, :string
  	 add_column :yfcases, :registeredmarketpricelink, :string 
  	 add_column :yfcases, :registrationmaplink, :string 
  	 add_column :yfcases, :registrationphotolink, :string 
  	 add_column :yfcases, :foreclosurerecordlink, :string 
  end
end
