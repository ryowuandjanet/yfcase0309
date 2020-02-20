class AddDecideToYfcases < ActiveRecord::Migration
  def change
	add_column :yfcases, :firstsurveydate, :date
	add_column :yfcases, :othersurveydate, :date
	add_column :yfcases, :surveyrecord, :string
	add_column :yfcases, :foreclosureannouncement, :string
	add_column :yfcases, :objectphotos, :string
	add_column :yfcases, :registeredmarketprice, :string
	add_column :yfcases, :registrationmap, :string
	add_column :yfcases, :registrationphoto, :string
	add_column :yfcases, :foreclosurerecord, :string
	add_column :yfcases, :surveyremark, :string
	add_column :yfcases, :surveyresolution, :string
	add_column :yfcases, :finaldecisionheader, :string
	add_column :yfcases, :finaldecisionconclusion, :string
	add_column :yfcases, :finaldecisionsurveyordecide1, :string
	add_column :yfcases, :finaldecisionsurveyordecide2, :string
	add_column :yfcases, :finaldecisionsurveyordecide3, :string
	add_column :yfcases, :finaldecisionsurveyordecide4, :string
	add_column :yfcases, :finaldecisionsurveyordecide5, :string
  end
end
