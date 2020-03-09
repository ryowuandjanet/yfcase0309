class CreatePlusrateas < ActiveRecord::Migration
  def change
    create_table :plusrateas do |t|
      t.string :persona
      t.decimal :plusa, precision: 4, scale: 2
      t.belongs_to :objectbuild, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
