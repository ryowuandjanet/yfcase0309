class CreateSubsigntruebs < ActiveRecord::Migration
  def change
    create_table :subsigntruebs do |t|
      t.string :signtrueb
      t.belongs_to :yfcase, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
