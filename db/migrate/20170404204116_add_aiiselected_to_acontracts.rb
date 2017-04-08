class AddAiiselectedToAcontracts < ActiveRecord::Migration
  def change
    add_column :acontracts, :aiiselected, :integer
  end
end
