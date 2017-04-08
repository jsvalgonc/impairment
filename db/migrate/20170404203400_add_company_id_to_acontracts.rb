class AddCompanyIdToAcontracts < ActiveRecord::Migration
  def change
    add_reference :acontracts, :company, index: true, foreign_key: true
  end
end
