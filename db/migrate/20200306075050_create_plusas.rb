class CreatePlusas < ActiveRecord::Migration
  def change
    create_table :plusas do |t|
      t.string :persona
      t.decimal :personplusa, precision: 5, scale: 2
      t.belongs_to :objectbuild, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
