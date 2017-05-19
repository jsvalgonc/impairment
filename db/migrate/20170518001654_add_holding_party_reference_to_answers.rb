class AddHoldingPartyReferenceToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :holding_party_reference, :text
  end
end
