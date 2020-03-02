class AddForeclosureannouncementLinkToYfcase < ActiveRecord::Migration
  def change
  	change_column :yfcases, :foreclosureannouncement, :text 
  	add_column :yfcases, :foreclosureannouncementtext, :string
  end
end
