class CreateObjectplusrates < ActiveRecord::Migration
  def change
    create_table :objectplusrates do |t|
      t.string :persona
      t.string :persionb
      t.decimal :personaplus, precision: 4, scale: 2
      t.decimal :personbplus, precision: 4, scale: 2
      t.belongs_to :objectbuild, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
