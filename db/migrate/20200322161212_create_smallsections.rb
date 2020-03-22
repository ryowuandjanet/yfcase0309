class CreateSmallsections < ActiveRecord::Migration
  def change
    create_table :smallsections do |t|
      t.string :name
      t.belongs_to :section, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
