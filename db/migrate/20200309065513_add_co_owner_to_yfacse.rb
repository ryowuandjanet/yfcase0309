class AddCoOwnerToYfacse < ActiveRecord::Migration
  def change
  	add_column :yfcases, :co_owner, :boolean
  end
end
