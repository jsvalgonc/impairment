class RemoveFieldStatusFromMonths < ActiveRecord::Migration
  def change
    remove_column :months, :status, :integer
  end
end
