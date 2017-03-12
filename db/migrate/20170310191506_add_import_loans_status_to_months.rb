class AddImportLoansStatusToMonths < ActiveRecord::Migration
  def change
    add_column :months, :import_loans_status, :integer
  end
end
