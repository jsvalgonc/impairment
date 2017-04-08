class AddMonthIdToAcontracts < ActiveRecord::Migration
  def change
    add_reference :acontracts, :month, index: true, foreign_key: true
  end
end
