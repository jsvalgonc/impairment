class AddAiSelectedToAparties < ActiveRecord::Migration
  def change
    add_column :aparties, :AISelected, :integer, :default=>0
  end
end
