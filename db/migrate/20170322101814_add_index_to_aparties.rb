class AddIndexToAparties < ActiveRecord::Migration
  def change
    add_index :aparties, [:BalanceSheetDate,:HoldingPartyReference, :PartyReference], :name => "index_aparties_primary_key"
  end
end
