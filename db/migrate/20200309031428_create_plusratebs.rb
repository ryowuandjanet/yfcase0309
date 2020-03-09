class CreatePlusratebs < ActiveRecord::Migration
  def change
    create_table :plusratebs do |t|
      t.string :personb
      t.decimal :plusb, precision: 4, scale: 2
      t.belongs_to :objectbuild, index: true, foreign_key: true

      t.timestamps null: false
    end
    drop_table :objectplusratebs
    drop_table :objectplusrates
  end
end
