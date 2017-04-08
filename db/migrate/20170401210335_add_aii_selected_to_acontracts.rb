class AddAiiSelectedToAcontracts < ActiveRecord::Migration
  def change
    add_column :acontracts, :AIISelected, :integer
  end
end
