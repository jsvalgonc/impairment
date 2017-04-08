class AddIndexToAmitigants < ActiveRecord::Migration
  def change
    add_index :amitigants, [:BalanceSheetDate ,:HoldingPartyReference,:ContractReference,:MitigantReference], :name => "index_amitigants_primary_key" 
  end
end