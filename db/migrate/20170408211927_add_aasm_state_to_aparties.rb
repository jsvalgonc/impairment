class AddAasmStateToAparties < ActiveRecord::Migration
  def change
    add_column :aparties, :aasm_state, :string
  end
end
