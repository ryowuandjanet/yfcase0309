class AddClickMonitorToYfcase < ActiveRecord::Migration
  def change
  	add_column :yfcases, :click , :integer
  	add_column :yfcases, :monitor , :integer
  end
end
