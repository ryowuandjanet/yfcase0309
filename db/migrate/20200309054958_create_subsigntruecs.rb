class CreateSubsigntruecs < ActiveRecord::Migration
  def change
    create_table :subsigntruecs do |t|
      t.string :signtruec
      t.belongs_to :yfcase, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
