class RemoveSurveyrecord < ActiveRecord::Migration
  def change
  	remove_column :yfcases, :surveyrecord
  end
end
