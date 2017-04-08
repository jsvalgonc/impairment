class AddIndexToMitigants < ActiveRecord::Migration
  def change
    add_index :mitigants, [:BalanceSheetDate ,:HoldingPartyReference,:ContractReference,:MitigantReference], :name => "index_mitigants_primary_key" 
  end
end
