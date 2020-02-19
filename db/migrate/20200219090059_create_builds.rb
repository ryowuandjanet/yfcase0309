class CreateBuilds < ActiveRecord::Migration
  def change
    create_table :builds do |t|
      t.string :buildnumber
      t.belongs_to :yfcase, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
