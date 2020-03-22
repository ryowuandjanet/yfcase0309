class AddSectionIdToYfcase < ActiveRecord::Migration
  def change
  	add_column :yfcases, :section_id, :integer
  	add_column :yfcases, :smallsection_id, :integer
  	
  	add_index :yfcases, :section_id
  	add_index :yfcases, :smallsection_id
  end
end
