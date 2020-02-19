class CreateYfcases < ActiveRecord::Migration
  def change
    create_table :yfcases do |t|
      t.string :casenumber
      t.string :address
      t.string :landurl
      t.decimal :landarea, precision: 9, scale: 2
      t.string :landholdingpoint

      t.timestamps null: false
    end
  end
end
