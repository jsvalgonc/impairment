class AddImportPartiesStatusToMonths < ActiveRecord::Migration
  def change
    add_column :months, :import_parties_status, :integer
  end
end
