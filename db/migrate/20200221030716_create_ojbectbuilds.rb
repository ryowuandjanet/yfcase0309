class CreateOjbectbuilds < ActiveRecord::Migration
  def change
    create_table :ojbectbuilds do |t|
      t.string :address
      t.integer :totalprice
      t.decimal :buildarea, precision: 9, scale: 2
      t.integer :unitprice
      t.decimal :house, precision: 5, scale: 2
      t.string :unit
      t.string :floorheight
      t.belongs_to :yfcase, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
