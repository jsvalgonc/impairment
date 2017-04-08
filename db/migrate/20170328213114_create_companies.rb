class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :CompanyCode
      t.string :Description
      t.integer :CompanyStatus

      t.timestamps null: false
    end
  end
end
