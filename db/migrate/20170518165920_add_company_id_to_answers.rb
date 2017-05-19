class AddCompanyIdToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :company_id, :integer
  end
end
