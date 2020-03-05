class AddColumnIdentityCardToPersonnal < ActiveRecord::Migration
  def change
  	add_column :personnals, :identitycard, :string
  end
end
