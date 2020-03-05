class CreatePersonnals < ActiveRecord::Migration
  def change
    create_table :personnals do |t|
      t.boolean :creditor
      t.boolean :debtor
      t.boolean :landowner
      t.boolean :buildowner
      t.string :name
      t.date :birthday
      t.string :address
      t.string :telphone
      t.string :mobile
      t.text :remark
      t.belongs_to :yfcase, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
