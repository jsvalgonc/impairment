class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.date :BalanceSheetDate
      t.string :ContractPortfolio
      t.string :ContractReference
      t.string :HoldingPartyReference
      t.string :PartyReference
      t.string :PartyDescription
      t.string :NIF
      t.string :ActivitySector
      t.string :CountryCode
      t.string :SectorialCode
      t.string :PartyType
      t.string :Balcao
      t.string :ZipCode
      t.string :CodigoVigilanciaEspecial
      t.string :PartyGroupReference
      t.decimal :TotalGroupExposure
      t.decimal :TotalPartyExposure
      t.decimal :BPN_OverdueCredit
      t.decimal :BPN_ReturnedCheques
      t.decimal :BPN_OverdueCreditOther
      t.decimal :BPN_BdPDefault
      t.decimal :BPN_OverdueCreditBPNOther
      t.string :NPLTeam
      t.string :NPLTeamLeader
      t.string :AssetManager
      t.string :LegalManager

      t.timestamps null: false
    end
  end
end
