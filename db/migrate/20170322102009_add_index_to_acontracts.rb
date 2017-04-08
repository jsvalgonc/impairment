class AddIndexToAcontracts < ActiveRecord::Migration
  def change
    add_index :acontracts, [:BalanceSheetDate, :HoldingPartyReference, :ContractReference, :ContractPortfolio], :name => "index_acontracts_primary_key"
  end
end