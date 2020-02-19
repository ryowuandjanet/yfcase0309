class AddPersonTo < ActiveRecord::Migration
  def change
  	add_column :yfcases, :creditor, :string
  	add_column :yfcases, :debtor, :string
  end
end
