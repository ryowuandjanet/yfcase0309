class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.belongs_to :township, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
