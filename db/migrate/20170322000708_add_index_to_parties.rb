class AddIndexToParties < ActiveRecord::Migration
  def change
    add_index :parties, [:BalanceSheetDate,:HoldingPartyReference, :PartyReference], :name => "index_parties_primary_key"
  end
end
