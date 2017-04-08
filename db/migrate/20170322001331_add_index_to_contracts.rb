class AddIndexToContracts < ActiveRecord::Migration
  def change
    add_index :contracts, [:BalanceSheetDate, :HoldingPartyReference, :ContractReference, :ContractPortfolio], :name => "index_contracts_primary_key"
  end
end

