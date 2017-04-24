class AddCompanyIdToAmitigants < ActiveRecord::Migration
  def change
    add_column :amitigants, :company_id, :integer
  end
end
