class Add < ActiveRecord::Migration
  def change
  	add_column :objectbuilds, :objectbuildurl, :string
  end
end
