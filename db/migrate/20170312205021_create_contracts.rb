class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.date :BalanceSheetDate
      t.string :ContractPortfolio
      t.string :ContractReference
      t.string :HoldingPartyReference
      t.string :BPN_Balcao
      t.string :PartyReference
      t.string :Classe
      t.string :ProductClass
      t.string :ProductComponent
      t.string :AccountNature
      t.string :AccountType
      t.date :OriginDate
      t.date :MaturityDate
      t.date :IrrecoverableDate
      t.string :Currency
      t.decimal :Balance
      t.decimal :DrawnAmount
      t.decimal :UndrawnAmount
      t.decimal :Principal
      t.decimal :AccruedInterestAtBSD
      t.decimal :LossClass
      t.decimal :TaxaNominal
      t.decimal :TIR
      t.string :TipoCredito
      t.string :TipoGarantia
      t.string :TipoCliente
      t.string :CurrentDelay
      t.string :ISMitigant
      t.decimal :BPN_PercentagemCartao
      t.decimal :BPN_Val_Fee
      t.string :IsMortgage
      t.decimal :BPN_Val1_CapVin
      t.decimal :BPN_Val2_CapVen
      t.decimal :BPN_Val3_CapAbt
      t.decimal :BPN_Val5_JrsVen
      t.decimal :BPN_Val6_JrsAnl
      t.decimal :BPN_Val7_PrvRGC
      t.decimal :BPN_Val8_PrvEco
      t.decimal :BPN_Val9_PrvCrV
      t.decimal :BPN_Val10_PrvCCD
      t.decimal :BPN_Val11_PrvRP
      t.decimal :BPN_Val13_GarPre
      t.string :BPN_AccRef1
      t.string :BPN_AccRef2
      t.string :BPN_AccRef3
      t.string :BPN_AccRef4_AccruedInterestAtBSD
      t.string :BPN_AccRef5
      t.string :BPN_AccRef6
      t.string :BPN_AccRef7
      t.string :BPN_AccRef8
      t.string :BPN_AccRef9
      t.string :BPN_AccRef10
      t.string :BPN_AccRef11
      t.string :BPN_AccRef12_UndrawnAmount
      t.string :BPN_AccRef13

      t.timestamps null: false
    end
  end
end
