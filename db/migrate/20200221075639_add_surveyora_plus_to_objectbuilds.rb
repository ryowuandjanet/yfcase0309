class AddSurveyoraPlusToObjectbuilds < ActiveRecord::Migration
  def change
  	add_column :objectbuilds, :surveyora, :string
  	add_column :objectbuilds, :surveyorb, :string
  	add_column :objectbuilds, :plusa, :decimal,precision: 3, scale: 2
  	add_column :objectbuilds, :plusb, :decimal,precision: 3, scale: 2
  end
end
