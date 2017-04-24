class AddCompanyIdToAparties < ActiveRecord::Migration
  def change
    add_reference :aparties, :company, index: true, foreign_key: true
  end
end
