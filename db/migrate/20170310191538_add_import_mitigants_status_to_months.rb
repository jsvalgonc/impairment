class AddImportMitigantsStatusToMonths < ActiveRecord::Migration
  def change
    add_column :months, :import_mitigants_status, :integer
  end
end
