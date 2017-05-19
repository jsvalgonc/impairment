class RemoveFieldholdingPartyReferenceFromAnswers < ActiveRecord::Migration
  def change
    remove_column :answers, :holding_party_reference, :text
  end
end
