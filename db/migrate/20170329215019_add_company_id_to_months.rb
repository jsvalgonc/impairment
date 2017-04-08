class AddCompanyIdToMonths < ActiveRecord::Migration
  def change
    add_reference :months, :company, index: true, foreign_key: true
  end
end
