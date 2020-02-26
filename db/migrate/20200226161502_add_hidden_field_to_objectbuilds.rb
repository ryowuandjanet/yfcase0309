class AddHiddenFieldToObjectbuilds < ActiveRecord::Migration
  def change
  	add_column :objectbuilds, :mesaprice, :decimal , precision: 9, scale: 2
  end
end

