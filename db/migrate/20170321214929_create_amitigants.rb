class CreateAmitigants < ActiveRecord::Migration
  def change
    create_table :amitigants do |t|
      t.date :BalanceSheetDate
      t.string :HoldingPartyReference
      t.string :ContractReference
      t.string :MitigantReference
      t.decimal :MitigantBalance
      t.string :MitigantType
      t.string :Componente
      t.references :acontract, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
