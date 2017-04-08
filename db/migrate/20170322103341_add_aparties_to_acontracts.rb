class AddApartiesToAcontracts < ActiveRecord::Migration
  def change
    add_reference :acontracts, :aparty, index: true, foreign_key: true
  end
end
