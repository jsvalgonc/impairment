class AddAasmStateToMonths < ActiveRecord::Migration
  def change
    add_column :months, :aasm_state, :string
  end
end
