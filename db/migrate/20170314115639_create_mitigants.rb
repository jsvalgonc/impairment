class CreateMitigants < ActiveRecord::Migration
  def change
    create_table :mitigants do |t|
      t.date :BalanceSheetDate
      t.string :HoldingPartyReference
      t.string :ContractReference
      t.string :MitigantReference
      t.decimal :MitigantBalance
      t.string :MitigantType
      t.string :Componente

      t.timestamps null: false
    end
  end
end
