class AddIdPartiesToContracts < ActiveRecord::Migration
  def change
    add_reference :contracts, :party, index: true, foreign_key: true
  end
end
