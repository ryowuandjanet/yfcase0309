class CreateSubsigntrueas < ActiveRecord::Migration
  def change
    create_table :subsigntrueas do |t|
      t.string :signtruea
      t.belongs_to :yfcase, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
