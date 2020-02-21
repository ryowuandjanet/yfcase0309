class RenameTablesToObjectbuilds < ActiveRecord::Migration
  def change
  	rename_table('ojbectbuilds', 'objectbuilds')
  end
end
