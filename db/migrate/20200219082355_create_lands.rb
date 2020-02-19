class CreateLands < ActiveRecord::Migration
  def change
    create_table :lands do |t|
      t.string :landnumber
      t.belongs_to :yfcase, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
